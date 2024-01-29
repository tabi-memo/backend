import type { ISO8601 } from "./type";
import { createServerClient } from "@supabase/ssr";

export const tripsFrom = async (
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  supabase: ReturnType<typeof createServerClient<any, "public">>,
): Promise<
  {
    id: string;
    user_id: string;
    title: string;
    date_from: ISO8601;
    date_to: ISO8601;
    cost: number;
    cost_unit: string | null;
    description: string;
    created_at: ISO8601;
    image_storage_object_id: string | null;
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
      id: "63248b67-37a8-42bd-abaa-cd07f158974b",
      user_id: userIDs[0],
      title: "Tokyo",
      date_from: "2024-01-01T00:00:00+09:00",
      date_to: "2021-01-10T00:00:00+09:00",
      cost: 1000,
      cost_unit: "$",
      description: "Trip 1 description",
      created_at: "2024-01-04T23:12:52.392723+00:00",
      image_storage_object_id: null,
    },
    {
      id: "e5bf6c2a-37c3-4622-8849-a236e6d6544d",
      user_id: userIDs[0],
      title: "Vancouver",
      date_from: "2021-02-01T00:00:00+09:00",
      date_to: "2021-02-10T00:00:00+09:00",
      cost: 2000,
      cost_unit: "$",
      description: "Trip 2 description",
      created_at: "2024-01-04T23:12:52.392723+00:00",
      image_storage_object_id: null,
    },
    {
      id: "4c6bd85c-7a7c-42f1-855b-5fb4c90ad478",
      user_id: userIDs[0],
      title: "Toronto",
      date_from: "2021-03-01T00:00:00+09:00",
      date_to: "2021-03-10T00:00:00+09:00",
      cost: 3000,
      cost_unit: "$",
      description: "Trip 3 description",
      created_at: "2024-01-04T23:12:52.392723+00:00",
      image_storage_object_id: null,
    },
    {
      id: "b410c958-7ca9-45d1-9c81-a86d682a3e60",
      user_id: userIDs[1],
      title: "New York",
      date_from: "2021-04-01T00:00:00+09:00",
      date_to: "2021-04-10T00:00:00+09:00",
      cost: 4000,
      cost_unit: "$",
      description: "Trip 4 description",
      created_at: "2024-01-04T23:12:52.392723+00:00",
      image_storage_object_id: null,
    },
    {
      id: "3cff1e3c-3eca-4188-9fee-62acbba36a67",
      user_id: userIDs[1],
      title: "Osaka",
      date_from: "2021-05-01T00:00:00+09:00",
      date_to: "2021-05-10T00:00:00+09:00",
      cost: 5000,
      cost_unit: "$",
      description: "Trip 5 description",
      created_at: "2024-01-04T23:12:52.392723+00:00",
      image_storage_object_id: null,
    },
    {
      id: "53dcd021-e07c-4de9-b54a-111bcf895fb3",
      user_id: userIDs[1],
      title: "Paris",
      date_from: "2021-06-01T00:00:00+09:00",
      date_to: "2021-06-10T00:00:00+09:00",
      cost: 6000,
      cost_unit: "$",
      description: "Trip 6 description",
      created_at: "2024-01-04T23:12:52.392723+00:00",
      image_storage_object_id: null,
    },
    {
      id: "78e4ad46-a85e-49ef-9438-aa4157895040",
      user_id: userIDs[2],
      title: "London",
      date_from: "2021-07-01T00:00:00+09:00",
      date_to: "2021-07-10T00:00:00+09:00",
      cost: 7000,
      cost_unit: "$",
      description: "Trip 7 description",
      created_at: "2024-01-04T23:12:52.392723+00:00",
      image_storage_object_id: null,
    },
    {
      id: "32ffb6dd-66cf-4c8c-97d0-6315e3114104",
      user_id: userIDs[2],
      title: "Singapore",
      date_from: "2021-08-01T00:00:00+09:00",
      date_to: "2021-08-10T00:00:00+09:00",
      cost: 8000,
      cost_unit: "$",
      description: "Trip 8 description",
      created_at: "2024-01-04T23:12:52.392723+00:00",
      image_storage_object_id: null,
    },
    {
      id: "99ba6ab8-d953-4767-beb1-11aa670a38da",
      user_id: userIDs[2],
      title: "Berlin",
      date_from: "2021-09-01T00:00:00+09:00",
      date_to: "2021-09-10T00:00:00+09:00",
      cost: 9000,
      cost_unit: "$",
      description: "Trip 9 description",
      created_at: "2024-01-04T23:12:52.392723+00:00",
      image_storage_object_id: null,
    },
    {
      id: "9b41713e-5e4e-406a-b474-221837c4f2d8",
      user_id: userIDs[3],
      title: "Madrid",
      date_from: "2021-10-01T00:00:00+09:00",
      date_to: "2021-10-10T00:00:00+09:00",
      cost: 10000,
      cost_unit: "$",
      description: "Trip 10 description",
      created_at: "2024-01-04T23:12:52.392723+00:00",
      image_storage_object_id: null,
    },
  ];
};
