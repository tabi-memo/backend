import { createServerClient } from "@supabase/ssr";

export const invitationsFrom = async (
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  supabase: ReturnType<typeof createServerClient<any, "public">>,
): Promise<
  {
    id: string;
    trip_id: string;
    invited_by_user_id: string;
    invitee_user_id: string;
    email: string;
    invitation_url: string;
    permission_level: "editable" | "view_only";
  }[]
> => {
  const userEmails = [
    "user1@example.com",
    "user2@example.com",
    "user3@example.com",
    "user4@example.com",
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
      id: "dbab1475-e54b-4390-94af-5a76dbd87dfb",
      trip_id: "63248b67-37a8-42bd-abaa-cd07f158974b",
      invited_by_user_id: userIDs[0],
      invitee_user_id: userIDs[1],
      email: "user1@example.com",
      invitation_url: "https://tabi-memo/invitations/1",
      permission_level: "editable",
    },
    {
      id: "df0ee714-b06e-4bd3-a7ff-176868e919e9",
      trip_id: "63248b67-37a8-42bd-abaa-cd07f158974b",
      invited_by_user_id: userIDs[0],
      invitee_user_id: userIDs[2],
      email: "user2@example.com",
      invitation_url: "https://tabi-memo/invitations/2",
      permission_level: "editable",
    },
    {
      id: "d4451099-e72f-44f7-baba-7b20ad1341df",
      trip_id: "63248b67-37a8-42bd-abaa-cd07f158974b",
      invited_by_user_id: userIDs[0],
      invitee_user_id: userIDs[3],
      email: "user3@example.com",
      invitation_url: "https://tabi-memo/invitations/3",
      permission_level: "view_only",
    },
  ];
};
