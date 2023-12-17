INSERT INTO
public.users (email, name, profile_picture_url)
VALUES
('user1@example.com', 'User 1', 'https://randomuser.me/api/portraits/women/1.jpg'),
('user2@example.com', 'User 2', 'https://randomuser.me/api/portraits/men/1.jpg'),
('user3@example.com', 'User 3', 'https://randomuser.me/api/portraits/women/2.jpg'),
('user4@example.com', 'User 4', 'https://randomuser.me/api/portraits/men/2.jpg'),
('user5@example.com', 'User 5', 'https://randomuser.me/api/portraits/women/3.jpg'),
('user6@example.com', 'User 6', 'https://randomuser.me/api/portraits/men/3.jpg'),
('user7@example.com', 'User 7', 'https://randomuser.me/api/portraits/women/4.jpg'),
('user8@example.com', 'User 8', 'https://randomuser.me/api/portraits/men/4.jpg'),
('user9@example.com', 'User 9', 'https://randomuser.me/api/portraits/women/5.jpg'),
( 'user10@example.com', 'User 10', 'https://randomuser.me/api/portraits/men/5.jpg');

INSERT INTO
public.trips (user_id, title, date_from, date_to, cost, description)
VALUES
(1, 'Tokyo', '2021-01-01', '2021-01-10', 1000, 'Trip 1 description'),
(1, 'Vancouver', '2021-02-01', '2021-02-10', 2000, 'Trip 2 description'),
(1, 'Toronto', '2021-03-01', '2021-03-10', 3000, 'Trip 3 description'),
(2, 'New York', '2021-04-01', '2021-04-10', 4000, 'Trip 4 description'),
(2, 'Osaka', '2021-05-01', '2021-05-10', 5000, 'Trip 5 description'),
(2, 'Paris', '2021-06-01', '2021-06-10', 6000, 'Trip 6 description'),
(3, 'London', '2021-07-01', '2021-07-10', 7000, 'Trip 7 description'),
(3, 'Singapore', '2021-08-01', '2021-08-10', 8000, 'Trip 8 description'),
(3, 'Berlin', '2021-09-01', '2021-09-10', 9000, 'Trip 9 description'),
(4, 'Madrid', '2021-10-01', '2021-10-10', 10000, 'Trip 10 description');

INSERT INTO
public.activity (trip_id, title, time_from, time_to, address, url, memo, cost)
VALUES
(1, 'Activity 1', '2021-01-01 10:00:00', '2021-01-01 12:00:00', 'Tokyo', 'https://www.google.com', 'Activity 1 memo', 100),
(1, 'Activity 2', '2021-01-02 10:00:00', '2021-01-02 12:00:00', 'Tokyo', 'https://www.google.com', 'Activity 2 memo', 200),
(1, 'Activity 3', '2021-01-03 10:00:00', '2021-01-03 12:00:00', 'Tokyo', 'https://www.google.com', 'Activity 3 memo', 300),
(2, 'Activity 4', '2021-02-01 10:00:00', '2021-02-01 12:00:00', 'Vancouver', 'https://www.google.com', 'Activity 4 memo', 400),
(2, 'Activity 5', '2021-02-02 10:00:00', '2021-02-02 12:00:00', 'Vancouver', 'https://www.google.com', 'Activity 5 memo', 500),
(2, 'Activity 6', '2021-02-03 10:00:00', '2021-02-03 12:00:00', 'Vancouver', 'https://www.google.com', 'Activity 6 memo', 600),
(3, 'Activity 7', '2021-03-01 10:00:00', '2021-03-01 12:00:00', 'Toronto', 'https://www.google.com', 'Activity 7 memo', 700),
(3, 'Activity 8', '2021-03-02 10:00:00', '2021-03-02 12:00:00', 'Toronto', 'https://www.google.com', 'Activity 8 memo', 800),
(3, 'Activity 9', '2021-03-03 10:00:00', '2021-03-03 12:00:00', 'Toronto', 'https://www.google.com', 'Activity 9 memo', 900),
(4, 'Activity 10', '2021-04-01 10:00:00', '2021-04-01 12:00:00', 'New York', 'https://www.google.com', 'Activity 10 memo', 1000),
(4, 'Activity 11', '2021-04-02 10:00:00', '2021-04-02 12:00:00', 'New York', 'https://www.google.com', 'Activity 11 memo', 1100),
(4, 'Activity 12', '2021-04-03 10:00:00', '2021-04-03 12:00:00', 'New York', 'https://www.google.com', 'Activity 12 memo', 1200),
(5, 'Activity 13', '2021-05-01 10:00:00', '2021-05-01 12:00:00', 'Osaka', 'https://www.google.com', 'Activity 13 memo', 1300),
(5, 'Activity 14', '2021-05-02 10:00:00', '2021-05-02 12:00:00', 'Osaka', 'https://www.google.com', 'Activity 14 memo', 1400),
(5, 'Activity 15', '2021-05-03 10:00:00', '2021-05-03 12:00:00', 'Osaka', 'https://www.google.com', 'Activity 15 memo', 1500),
(6, 'Activity 16', '2021-06-01 10:00:00', '2021-06-01 12:00:00', 'Paris', 'https://www.google.com', 'Activity 16 memo', 1600),
(6, 'Activity 17', '2021-06-02 10:00:00', '2021-06-02 12:00:00', 'Paris', 'https://www.google.com', 'Activity 17 memo', 1700),
(6, 'Activity 18', '2021-06-03 10:00:00', '2021-06-03 12:00:00', 'Paris', 'https://www.google.com', 'Activity 18 memo', 1800),
(7, 'Activity 19', '2021-07-01 10:00:00', '2021-07-01 12:00:00', 'London', 'https://www.google.com', 'Activity 19 memo', 1900),
(7, 'Activity 20', '2021-07-02 10:00:00', '2021-07-02 12:00:00', 'London', 'https://www.google.com', 'Activity 20 memo', 2000),
(7, 'Activity 21', '2021-07-03 10:00:00', '2021-07-03 12:00:00', 'London', 'https://www.google.com', 'Activity 21 memo', 2100),
(8, 'Activity 22', '2021-08-01 10:00:00', '2021-08-01 12:00:00', 'Singapore', 'https://www.google.com', 'Activity 22 memo', 2200),
(8, 'Activity 23', '2021-08-02 10:00:00', '2021-08-02 12:00:00', 'Singapore', 'https://www.google.com', 'Activity 23 memo', 2300),
(8, 'Activity 24', '2021-08-03 10:00:00', '2021-08-03 12:00:00', 'Singapore', 'https://www.google.com', 'Activity 24 memo', 2400),
(9, 'Activity 25', '2021-09-01 10:00:00', '2021-09-01 12:00:00', 'Berlin', 'https://www.google.com', 'Activity 25 memo', 2500),
(9, 'Activity 26', '2021-09-02 10:00:00', '2021-09-02 12:00:00', 'Berlin', 'https://www.google.com', 'Activity 26 memo', 2600),
(9, 'Activity 27', '2021-09-03 10:00:00', '2021-09-03 12:00:00', 'Berlin', 'https://www.google.com', 'Activity 27 memo', 2700),
(10, 'Activity 28', '2021-10-01 10:00:00', '2021-10-01 12:00:00', 'Madrid', 'https://www.google.com', 'Activity 28 memo', 2800),
(10, 'Activity 29', '2021-10-02 10:00:00', '2021-10-02 12:00:00', 'Madrid', 'https://www.google.com', 'Activity 29 memo', 2900),
(10, 'Activity 30', '2021-10-03 10:00:00', '2021-10-03 12:00:00', 'Madrid', 'https://www.google.com', 'Activity 30 memo', 3000);

INSERT INTO
public.tags (name)
VALUES
('Tag 1'),
('Tag 2'),
('Tag 3'),
('Tag 4'),
('Tag 5'),
('Tag 6'),
('Tag 7'),
('Tag 8'),
('Tag 9'),
('Tag 10');

INSERT INTO
public.trip_tags (trip_id, tag_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 1),
(4, 2),
(5, 3),
(5, 4),
(5, 5),
(6, 6),
(6, 7),
(6, 8),
(7, 9),
(7, 10),
(7, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 5),
(9, 6),
(9, 7),
(10, 8),
(10, 9),
(10, 10);

INSERT INTO
public.invitations (trip_id, invited_by_user_id, invitee_user_id, email, invitation_url, permission_level)
VALUES
(1, 1, 2, 'user1@example.com', 'https://tabi-memo/invitations/1', 'editable'),
(1, 1, 3, 'user2@example.com', 'https://tabi-memo/invitations/2', 'editable'),
(1, 1, 4, 'user3@example.com', 'https://tabi-memo/invitations/3', 'view_only');


CREATE FUNCTION auth.handle_new_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY definer 
AS $$
BEGIN
    INSERT INTO public.users
    (uuid, email, name)
    VALUES
    (new.id, new.email, new.raw_user_meta_data ->> 'name');
    return new;
END;
$$;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  for each ROW EXECUTE PROCEDURE auth.handle_new_user();
