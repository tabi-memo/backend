import type { ISO8601, ISO8601Date } from "./type";
import { createServerClient } from "@supabase/ssr";

export const tripsFrom = async (
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  supabase: ReturnType<typeof createServerClient<any, "public">>,
): Promise<
  {
    id: string;
    user_id: string;
    title: string;
    date_from: ISO8601Date;
    date_to: ISO8601Date;
    cost: number;
    description: string;
    created_at: ISO8601;
    image_storage_object_id: string | null;
  }[]
> => [
  {
    id: "63248b67-37a8-42bd-abaa-cd07f158974b",
    user_id: (
      (
        await supabase
          .from("users")
          .select("id")
          .eq("email", "user1@example.com")
          .limit(1)
          .single()
      ).data as { id: string }
    ).id,
    title: "Tokyo",
    date_from: "2021-01-01",
    date_to: "2021-01-10",
    cost: 1000,
    description: "Trip 1 description",
    created_at: "2024-01-04T23:12:52.392723+00:00",
    image_storage_object_id: null,
  },
  {
    id: "e5bf6c2a-37c3-4622-8849-a236e6d6544d",
    user_id: (
      (
        await supabase
          .from("users")
          .select("id")
          .eq("email", "user1@example.com")
          .limit(1)
          .single()
      ).data as { id: string }
    ).id,
    title: "Vancouver",
    date_from: "2021-02-01",
    date_to: "2021-02-10",
    cost: 2000,
    description: "Trip 2 description",
    created_at: "2024-01-04T23:12:52.392723+00:00",
    image_storage_object_id: null,
  },
  {
    id: "4c6bd85c-7a7c-42f1-855b-5fb4c90ad478",
    user_id: (
      (
        await supabase
          .from("users")
          .select("id")
          .eq("email", "user1@example.com")
          .limit(1)
          .single()
      ).data as { id: string }
    ).id,
    title: "Toronto",
    date_from: "2021-03-01",
    date_to: "2021-03-10",
    cost: 3000,
    description: "Trip 3 description",
    created_at: "2024-01-04T23:12:52.392723+00:00",
    image_storage_object_id: null,
  },
  {
    id: "b410c958-7ca9-45d1-9c81-a86d682a3e60",
    user_id: (
      (
        await supabase
          .from("users")
          .select("id")
          .eq("email", "user2@example.com")
          .limit(1)
          .single()
      ).data as { id: string }
    ).id,
    title: "New York",
    date_from: "2021-04-01",
    date_to: "2021-04-10",
    cost: 4000,
    description: "Trip 4 description",
    created_at: "2024-01-04T23:12:52.392723+00:00",
    image_storage_object_id: null,
  },
  {
    id: "3cff1e3c-3eca-4188-9fee-62acbba36a67",
    user_id: (
      (
        await supabase
          .from("users")
          .select("id")
          .eq("email", "user2@example.com")
          .limit(1)
          .single()
      ).data as { id: string }
    ).id,
    title: "Osaka",
    date_from: "2021-05-01",
    date_to: "2021-05-10",
    cost: 5000,
    description: "Trip 5 description",
    created_at: "2024-01-04T23:12:52.392723+00:00",
    image_storage_object_id: null,
  },
  {
    id: "53dcd021-e07c-4de9-b54a-111bcf895fb3",
    user_id: (
      (
        await supabase
          .from("users")
          .select("id")
          .eq("email", "user2@example.com")
          .limit(1)
          .single()
      ).data as { id: string }
    ).id,
    title: "Paris",
    date_from: "2021-06-01",
    date_to: "2021-06-10",
    cost: 6000,
    description: "Trip 6 description",
    created_at: "2024-01-04T23:12:52.392723+00:00",
    image_storage_object_id: null,
  },
  {
    id: "78e4ad46-a85e-49ef-9438-aa4157895040",
    user_id: (
      (
        await supabase
          .from("users")
          .select("id")
          .eq("email", "user3@example.com")
          .limit(1)
          .single()
      ).data as { id: string }
    ).id,
    title: "London",
    date_from: "2021-07-01",
    date_to: "2021-07-10",
    cost: 7000,
    description: "Trip 7 description",
    created_at: "2024-01-04T23:12:52.392723+00:00",
    image_storage_object_id: null,
  },
  {
    id: "32ffb6dd-66cf-4c8c-97d0-6315e3114104",
    user_id: (
      (
        await supabase
          .from("users")
          .select("id")
          .eq("email", "user3@example.com")
          .limit(1)
          .single()
      ).data as { id: string }
    ).id,
    title: "Singapore",
    date_from: "2021-08-01",
    date_to: "2021-08-10",
    cost: 8000,
    description: "Trip 8 description",
    created_at: "2024-01-04T23:12:52.392723+00:00",
    image_storage_object_id: null,
  },
  {
    id: "99ba6ab8-d953-4767-beb1-11aa670a38da",
    user_id: (
      (
        await supabase
          .from("users")
          .select("id")
          .eq("email", "user3@example.com")
          .limit(1)
          .single()
      ).data as { id: string }
    ).id,
    title: "Berlin",
    date_from: "2021-09-01",
    date_to: "2021-09-10",
    cost: 9000,
    description: "Trip 9 description",
    created_at: "2024-01-04T23:12:52.392723+00:00",
    image_storage_object_id: null,
  },
  {
    id: "9b41713e-5e4e-406a-b474-221837c4f2d8",
    user_id: (
      (
        await supabase
          .from("users")
          .select("id")
          .eq("email", "user4@example.com")
          .limit(1)
          .single()
      ).data as { id: string }
    ).id,
    title: "Madrid",
    date_from: "2021-10-01",
    date_to: "2021-10-10",
    cost: 10000,
    description: "Trip 10 description",
    created_at: "2024-01-04T23:12:52.392723+00:00",
    image_storage_object_id: null,
  },
];
