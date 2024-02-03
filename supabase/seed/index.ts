import { createServerClient } from "@supabase/ssr";
import { users } from "./data/users";
import { tripsFrom } from "./data/trips";
import { activity } from "./data/activity";
import { tagsForm } from "./data/tags";
import { trip_tags } from "./data/trip_tags";
import { invitationsFrom } from "./data/invitations";

const assertGetEnvValueFrom = (key: string): string => {
  const value = process.env[key];
  if (typeof value !== "string") {
    throw new Error(`Environment value for ${key} is not set`);
  }
  return value;
};

const supabaseWithDefaultSchema = createServerClient(
  assertGetEnvValueFrom("SUPABASE_URL"),
  assertGetEnvValueFrom("SUPABASE_ANON_KEY"),
  { cookies: {} },
);

const supabaseWithPublicSchema = createServerClient(
  assertGetEnvValueFrom("SUPABASE_URL"),
  assertGetEnvValueFrom("SUPABASE_ANON_KEY"),
  { cookies: {}, db: { schema: "public" } },
);

const insertUsers = async (): Promise<void> => {
  await Promise.all(
    users.map(async (user) => {
      const { error } = await supabaseWithDefaultSchema.auth.signUp({
        email: user.email,
        password: user.password,
        options: {
          data: {
            name: user.name,
          },
        },
      });
      if (error) {
        throw error;
      }

      const { error: usersError } = await supabaseWithPublicSchema
        .from("users")
        .update({ profile_picture_url: user.profile_picture_url })
        .eq("email", user.email);
      if (usersError) {
        throw usersError;
      }
    }),
  );
};

(async () => {
  await insertUsers();

  for (const { table, data } of [
    { table: "trips", data: await tripsFrom(supabaseWithPublicSchema) },
    { table: "activity", data: activity },
    { table: "tags", data: await tagsForm(supabaseWithPublicSchema) },
    { table: "trip_tags", data: trip_tags },
    {
      table: "invitations",
      data: await invitationsFrom(supabaseWithPublicSchema),
    },
  ]) {
    const { error } = await supabaseWithPublicSchema.from(table).insert(data);
    if (error) {
      throw error;
    }
  }
})().catch(console.error);
