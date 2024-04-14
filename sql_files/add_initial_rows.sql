-- Insert into Members table
INSERT INTO members (email, encrypted_password, first_name, last_name, phone_number, created_at, updated_at)
VALUES
('john.doe@example.com', 'encrypted_password1', 'John', 'Doe', '1234567890', NOW(), NOW()),
('jane.doe@example.com', 'encrypted_password2', 'Jane', 'Doe', '2345678901', NOW(), NOW()),
('jim.bean@example.com', 'encrypted_password3', 'Jim', 'Bean', '3456789012', NOW(), NOW());

-- Insert into Trainers table
INSERT INTO trainers (email, encrypted_password, first_name, last_name, yoe, created_at, updated_at)
VALUES
('trainer1@example.com', 'encrypted_password4', 'Alice', 'Smith', 5, NOW(), NOW()),
('trainer2@example.com', 'encrypted_password5', 'Bob', 'Johnson', 3, NOW(), NOW()),
('trainer3@example.com', 'encrypted_password6', 'Carol', 'Williams', 7, NOW(), NOW());

-- Insert into Group Classes table
INSERT INTO group_classes (name, description, start_time, end_time, is_recurring, trainers_id, created_at, updated_at)
VALUES
('Team Plyometrics', 'Group plyometrics session for basketball team.', NOW(), NOW() + INTERVAL '1 hour', TRUE, 1, NOW(), NOW()),
('Group Boxing Class', 'Challenging boxing session for new boxers', NOW(), NOW() + INTERVAL '1 hour', FALSE, 2, NOW(), NOW()),
('Endurance Training for Runners', 'High intensity endurance training for track & field runners.', NOW(), NOW() + INTERVAL '1 hour', TRUE, 3, NOW(), NOW());

-- Insert into Fitness Goals table
INSERT INTO fitness_goals (name, description, start_date, end_date, starting_value, ending_value, members_id, created_at, updated_at)
VALUES
('Lose Weight', 'Goal to lose 10 kg.', '2023-01-01', '2023-06-01', 80, 70, 1, NOW(), NOW()),
('Gain Muscle', 'Goal to gain 5 kg of muscle.', '2023-02-01', '2023-07-01', 60, 65, 2, NOW(), NOW()),
('Improve Stamina', 'Increase running stamina.', '2023-03-01', '2023-08-01', 0, 3, 3, NOW(), NOW());

-- Insert into Health Metrics table
INSERT INTO health_metrics (name, value, members_id, created_at, updated_at)
VALUES
('Heart Rate', 72, 1, NOW(), NOW()),
('Blood Pressure', 120, 2, NOW(), NOW()),
('Cholesterol', 190, 3, NOW(), NOW());

-- Insert into Payment Methods table
INSERT INTO payment_methods (card_number, expiry_date, cvv, members_id, created_at, updated_at)
VALUES
(1234567890123456, '2025-12-31', 123, 1, NOW(), NOW()),
(2345678901234567, '2024-11-30', 234, 2, NOW(), NOW()),
(3456789012345678, '2023-10-31', 345, 3, NOW(), NOW());

-- Insert into Personal Training Sessions table
INSERT INTO personal_training_sessions (name, description, start_time, end_time, members_id, trainers_id, created_at, updated_at)
VALUES
('Session 1', 'Personal training session for weight loss.', NOW(), NOW() + INTERVAL '1 hour', 1, 1, NOW(), NOW()),
('Session 2', 'Personal training session for muscle gain.', NOW(), NOW() + INTERVAL '1 hour', 2, 2, NOW(), NOW()),
('Session 3', 'Personal training session for power lifting.', NOW(), NOW() + INTERVAL '1 hour', 3, 3, NOW(), NOW());

-- Insert into Room Bookings table
INSERT INTO room_bookings (start_date, end_date, rooms_id, trainers_id, created_at, updated_at)
VALUES
(NOW(), NOW() + INTERVAL '2 hours', 1, 1, NOW(), NOW()),
(NOW(), NOW() + INTERVAL '2 hours', 2, 2, NOW(), NOW()),
(NOW(), NOW() + INTERVAL '2 hours', 3, 3, NOW(), NOW());

-- Insert into Rooms table
INSERT INTO rooms (name, max_occupancy, is_booked, created_at, updated_at)
VALUES
('Room A', 10, FALSE, NOW(), NOW()),
('Room B', 15, TRUE, NOW(), NOW()),
('Room C', 20, FALSE, NOW(), NOW());

-- Insert into Exercise Routines table
INSERT INTO exercise_routines (name, days_per_week, description, created_at, updated_at)
VALUES
('Routine A', 3, 'Routine for beginners.', NOW(), NOW()),
('Routine B', 5, 'Routine for intermediate.', NOW(), NOW()),
('Routine C', 7, 'Routine for advanced.', NOW(), NOW());

-- Insert into Exercises table
INSERT INTO exercises (name, sets, reps_per_set, description, created_at, updated_at)
VALUES
('Push-up', 3, 15, 'Standard push-ups.', NOW(), NOW()),
('Pull-up', 4, 10, 'Pull-ups for upper body strength.', NOW(), NOW()),
('Squat', 5, 12, 'Squats for leg strength.', NOW(), NOW());

-- Insert into Exercise Routine Junctions table
INSERT INTO exercise_routine_junctions (exercise_routine_id, exercise_id)
VALUES
(1, 1),
(1, 2),
(1, 3);

INSERT INTO equipment (name, description, most_recently_used, most_recently_maintained, created_at, updated_at)
VALUES
('Smith machine', 'Used for assisted compound exercises.', '2023-03-01', '2023-03-15', NOW(), NOW()),
('Dumbbells', 'Weights for strength training.', '2023-04-01', '2023-04-15', NOW(), NOW()),
('Squat Rack', 'Used for big compound exercises.', '2023-05-01', '2023-05-15', NOW(), NOW());
