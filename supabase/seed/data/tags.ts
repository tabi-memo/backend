import { createServerClient } from "@supabase/ssr";

export const tagsForm = async (
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  supabase: ReturnType<typeof createServerClient<any, "public">>,
): Promise<
  {
    id: string;
    user_id: string;
    name: string;
  }[]
> => {
  const userEmails = [
    "user1@example.com",
    "user2@example.com",
    "user3@example.com",
  ];

  const userIDs = await Promise.all(
    userEmails.map(async (email) => {
      const { data } = await supabase
        .from("users")
        .select("id")
        .eq("email", email)
        .limit(1)
        .single();

      if (!data) {
        return "";
      }

      return data.id as string;
    }),
  );

  return [
    {
      id: "193c044c-2626-4d6b-8010-8907bde30743",
      user_id: userIDs[0],
      name: "Tag 1-1",
    },
    {
      id: "30c71bc1-537d-4c5d-b8fd-9effb7a0125f",
      user_id: userIDs[0],
      name: "Tag 1-2",
    },
    {
      id: "42d57db4-c86c-4358-a51c-b8b6a8a1a2d4",
      user_id: userIDs[0],
      name: "Tag 1-3",
    },
    {
      id: "2fdf2542-0576-4a30-a326-0cb4222aac22",
      user_id: userIDs[0],
      name: "Tag 1-4",
    },
    {
      id: "d2bcdf14-c76e-4c81-9052-1e780e679ca6",
      user_id: userIDs[1],
      name: "Tag 2-1",
    },
    {
      id: "531218c2-a38a-47d9-bf70-aa64131db0b6",
      user_id: userIDs[1],
      name: "Tag 2-2",
    },
    {
      id: "96f3dfb4-2874-4f98-8ec9-f2e26827949a",
      user_id: userIDs[1],
      name: "Tag 2-3",
    },
    {
      id: "747f9a3c-7c6c-483c-88a8-ef12141f39ad",
      user_id: userIDs[1],
      name: "Tag 2-4",
    },
    {
      id: "c730e318-2271-4663-b105-6068a11f71b7",
      user_id: userIDs[2],
      name: "Tag 3-1",
    },
    {
      id: "a7e8c87c-8993-4ec5-9aba-cef3acd4d947",
      user_id: userIDs[2],
      name: "Tag 3-2",
    },
  ];
};
