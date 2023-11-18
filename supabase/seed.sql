INSERT INTO
public.users (id, uuid, email, name, profile_picture_url)
VALUES
(1, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'user1@example.com', 'User 1', 'https://randomuser.me/api/portraits/women/1.jpg'),
(2, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'user2@example.com', 'User 2', 'https://randomuser.me/api/portraits/men/1.jpg'),
(3, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'user3@example.com', 'User 3', 'https://randomuser.me/api/portraits/women/2.jpg'),
(4, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'user4@example.com', 'User 4', 'https://randomuser.me/api/portraits/men/2.jpg'),
(5, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'user5@example.com', 'User 5', 'https://randomuser.me/api/portraits/women/3.jpg'),
(6, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'user6@example.com', 'User 6', 'https://randomuser.me/api/portraits/men/3.jpg'),
(7, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'user7@example.com', 'User 7', 'https://randomuser.me/api/portraits/women/4.jpg'),
(8, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'user8@example.com', 'User 8', 'https://randomuser.me/api/portraits/men/4.jpg'),
(9, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'user9@example.com', 'User 9', 'https://randomuser.me/api/portraits/women/5.jpg'),
(10, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', 'user10@example.com', 'User 10', 'https://randomuser.me/api/portraits/men/5.jpg');

INSERT INTO
public.trips (id, uuid, user_id, title, date_from, date_to, cost, description)
VALUES
(1, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 1, 'Tokyo', '2021-01-01', '2021-01-10', 1000, 'Trip 1 description'),
(2, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 1, 'Vancouver', '2021-02-01', '2021-02-10', 2000, 'Trip 2 description'),
(3, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 1, 'Toronto', '2021-03-01', '2021-03-10', 3000, 'Trip 3 description'),
(4, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 2, 'New York', '2021-04-01', '2021-04-10', 4000, 'Trip 4 description'),
(5, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 2, 'Osaka', '2021-05-01', '2021-05-10', 5000, 'Trip 5 description'),
(6, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 2, 'Paris', '2021-06-01', '2021-06-10', 6000, 'Trip 6 description'),
(7, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', 3, 'London', '2021-07-01', '2021-07-10', 7000, 'Trip 7 description'),
(8, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a28', 3, 'Singapore', '2021-08-01', '2021-08-10', 8000, 'Trip 8 description'),
(9, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a29', 3, 'Berlin', '2021-09-01', '2021-09-10', 9000, 'Trip 9 description'),
(10, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a30', 4, 'Madrid', '2021-10-01', '2021-10-10', 10000, 'Trip 10 description');

INSERT INTO
public.activity (id, uuid, trip_id, title, time_from, time_to, address, url, memo, cost)
VALUES
(1, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a31', 1, 'Activity 1', '2021-01-01 10:00:00', '2021-01-01 12:00:00', 'Tokyo', 'https://www.google.com', 'Activity 1 memo', 100),
(2, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a32', 1, 'Activity 2', '2021-01-02 10:00:00', '2021-01-02 12:00:00', 'Tokyo', 'https://www.google.com', 'Activity 2 memo', 200),
(3, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a33', 1, 'Activity 3', '2021-01-03 10:00:00', '2021-01-03 12:00:00', 'Tokyo', 'https://www.google.com', 'Activity 3 memo', 300),
(4, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a34', 2, 'Activity 4', '2021-02-01 10:00:00', '2021-02-01 12:00:00', 'Vancouver', 'https://www.google.com', 'Activity 4 memo', 400),
(5, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a35', 2, 'Activity 5', '2021-02-02 10:00:00', '2021-02-02 12:00:00', 'Vancouver', 'https://www.google.com', 'Activity 5 memo', 500),
(6, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a36', 2, 'Activity 6', '2021-02-03 10:00:00', '2021-02-03 12:00:00', 'Vancouver', 'https://www.google.com', 'Activity 6 memo', 600),
(7, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a37', 3, 'Activity 7', '2021-03-01 10:00:00', '2021-03-01 12:00:00', 'Toronto', 'https://www.google.com', 'Activity 7 memo', 700),
(8, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a38', 3, 'Activity 8', '2021-03-02 10:00:00', '2021-03-02 12:00:00', 'Toronto', 'https://www.google.com', 'Activity 8 memo', 800),
(9, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a39', 3, 'Activity 9', '2021-03-03 10:00:00', '2021-03-03 12:00:00', 'Toronto', 'https://www.google.com', 'Activity 9 memo', 900),
(10, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a40', 4, 'Activity 10', '2021-04-01 10:00:00', '2021-04-01 12:00:00', 'New York', 'https://www.google.com', 'Activity 10 memo', 1000),
(11, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a41', 4, 'Activity 11', '2021-04-02 10:00:00', '2021-04-02 12:00:00', 'New York', 'https://www.google.com', 'Activity 11 memo', 1100),
(12, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a42', 4, 'Activity 12', '2021-04-03 10:00:00', '2021-04-03 12:00:00', 'New York', 'https://www.google.com', 'Activity 12 memo', 1200),
(13, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a43', 5, 'Activity 13', '2021-05-01 10:00:00', '2021-05-01 12:00:00', 'Osaka', 'https://www.google.com', 'Activity 13 memo', 1300),
(14, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a44', 5, 'Activity 14', '2021-05-02 10:00:00', '2021-05-02 12:00:00', 'Osaka', 'https://www.google.com', 'Activity 14 memo', 1400),
(15, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a45', 5, 'Activity 15', '2021-05-03 10:00:00', '2021-05-03 12:00:00', 'Osaka', 'https://www.google.com', 'Activity 15 memo', 1500),
(16, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a46', 6, 'Activity 16', '2021-06-01 10:00:00', '2021-06-01 12:00:00', 'Paris', 'https://www.google.com', 'Activity 16 memo', 1600),
(17, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a47', 6, 'Activity 17', '2021-06-02 10:00:00', '2021-06-02 12:00:00', 'Paris', 'https://www.google.com', 'Activity 17 memo', 1700),
(18, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a48', 6, 'Activity 18', '2021-06-03 10:00:00', '2021-06-03 12:00:00', 'Paris', 'https://www.google.com', 'Activity 18 memo', 1800),
(19, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a49', 7, 'Activity 19', '2021-07-01 10:00:00', '2021-07-01 12:00:00', 'London', 'https://www.google.com', 'Activity 19 memo', 1900),
(20, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a50', 7, 'Activity 20', '2021-07-02 10:00:00', '2021-07-02 12:00:00', 'London', 'https://www.google.com', 'Activity 20 memo', 2000),
(21, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a51', 7, 'Activity 21', '2021-07-03 10:00:00', '2021-07-03 12:00:00', 'London', 'https://www.google.com', 'Activity 21 memo', 2100),
(22, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a52', 8, 'Activity 22', '2021-08-01 10:00:00', '2021-08-01 12:00:00', 'Singapore', 'https://www.google.com', 'Activity 22 memo', 2200),
(23, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a53', 8, 'Activity 23', '2021-08-02 10:00:00', '2021-08-02 12:00:00', 'Singapore', 'https://www.google.com', 'Activity 23 memo', 2300),
(24, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a54', 8, 'Activity 24', '2021-08-03 10:00:00', '2021-08-03 12:00:00', 'Singapore', 'https://www.google.com', 'Activity 24 memo', 2400),
(25, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a55', 9, 'Activity 25', '2021-09-01 10:00:00', '2021-09-01 12:00:00', 'Berlin', 'https://www.google.com', 'Activity 25 memo', 2500),
(26, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a56', 9, 'Activity 26', '2021-09-02 10:00:00', '2021-09-02 12:00:00', 'Berlin', 'https://www.google.com', 'Activity 26 memo', 2600),
(27, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a57', 9, 'Activity 27', '2021-09-03 10:00:00', '2021-09-03 12:00:00', 'Berlin', 'https://www.google.com', 'Activity 27 memo', 2700),
(28, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a58', 10, 'Activity 28', '2021-10-01 10:00:00', '2021-10-01 12:00:00', 'Madrid', 'https://www.google.com', 'Activity 28 memo', 2800),
(29, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a59', 10, 'Activity 29', '2021-10-02 10:00:00', '2021-10-02 12:00:00', 'Madrid', 'https://www.google.com', 'Activity 29 memo', 2900),
(30, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a60', 10, 'Activity 30', '2021-10-03 10:00:00', '2021-10-03 12:00:00', 'Madrid', 'https://www.google.com', 'Activity 30 memo', 3000);

INSERT INTO
public.tags (id, uuid, name)
VALUES
(1, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a61', 'Tag 1'),
(2, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a62', 'Tag 2'),
(3, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a63', 'Tag 3'),
(4, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a64', 'Tag 4'),
(5, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a65', 'Tag 5'),
(6, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a66', 'Tag 6'),
(7, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a67', 'Tag 7'),
(8, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a68', 'Tag 8'),
(9, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a69', 'Tag 9'),
(10, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a70', 'Tag 10');

INSERT INTO
public.trip_tags (id, trip_id, tag_id)
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 4, 10),
(11, 4, 1),
(12, 4, 2),
(13, 5, 3),
(14, 5, 4),
(15, 5, 5),
(16, 6, 6),
(17, 6, 7),
(18, 6, 8),
(19, 7, 9),
(20, 7, 10),
(21, 7, 1),
(22, 8, 2),
(23, 8, 3),
(24, 8, 4),
(25, 9, 5),
(26, 9, 6),
(27, 9, 7),
(28, 10, 8),
(29, 10, 9),
(30, 10, 10);

INSERT INTO
public.invitations (id, uuid, trip_id, invited_by_user_id, invitee_user_id, email, invitation_url, permission_level)
VALUES
(1, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a71', 1, 1, 2, 'user1@example.com', 'https://tabi-memo/invitations/1', 'editable'),
(2, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a72', 1, 1, 3, 'user2@example.com', 'https://tabi-memo/invitations/2', 'editable'),
(3, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a73', 1, 1, 4, 'user3@example.com', 'https://tabi-memo/invitations/3', 'view_only');
