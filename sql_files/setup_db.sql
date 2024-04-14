CREATE TABLE members (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    encrypted_password VARCHAR(255) NOT NULL,
    reset_password_token VARCHAR(255) UNIQUE,
    reset_password_sent_at TIMESTAMP,
    remember_created_at TIMESTAMP,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number VARCHAR(255),
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

CREATE TABLE group_classes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    is_recurring BOOLEAN NOT NULL,
    trainers_id INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    FOREIGN KEY (trainers_id) REFERENCES trainers (id)
);

CREATE TABLE members_group_classes (
    member_id INTEGER NOT NULL,
    group_class_id INTEGER NOT NULL,
    PRIMARY KEY (member_id, group_class_id),
    FOREIGN KEY (member_id) REFERENCES members (id),
    FOREIGN KEY (group_class_id) REFERENCES group_classes (id)
);

CREATE TABLE trainers (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    encrypted_password VARCHAR(255) NOT NULL,
    reset_password_token VARCHAR(255) UNIQUE,
    reset_password_sent_at TIMESTAMP,
    remember_created_at TIMESTAMP,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    yoe INTEGER,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

CREATE TABLE fitness_goals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    start_date DATE,
    end_date DATE,
    starting_value INTEGER,
    ending_value INTEGER,
    members_id INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    FOREIGN KEY (members_id) REFERENCES members (id)
);

CREATE TABLE health_metrics (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    value INTEGER,
    members_id INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    FOREIGN KEY (members_id) REFERENCES members (id)
);

CREATE TABLE payment_methods (
    id SERIAL PRIMARY KEY,
    card_number INTEGER,
    expiry_date DATE,
    cvv INTEGER,
    members_id INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    FOREIGN KEY (members_id) REFERENCES members (id)
);

CREATE TABLE personal_training_sessions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    members_id INTEGER NOT NULL,
    trainers_id INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    FOREIGN KEY (members_id) REFERENCES members (id),
    FOREIGN KEY (trainers_id) REFERENCES trainers (id)
);

CREATE TABLE room_bookings (
    id SERIAL PRIMARY KEY,
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    rooms_id INTEGER NOT NULL,
    trainers_id INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    FOREIGN KEY (rooms_id) REFERENCES rooms (id),
    FOREIGN KEY (trainers_id) REFERENCES trainers (id)
);

CREATE TABLE rooms (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    max_occupancy INTEGER,
    is_booked BOOLEAN,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

CREATE TABLE exercise_routines (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    days_per_week INTEGER,
    description TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

CREATE TABLE exercises (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    sets INTEGER,
    reps_per_set INTEGER,
    description TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

CREATE TABLE exercise_routine_junctions (
    exercise_routine_id INTEGER NOT NULL,
    exercise_id INTEGER NOT NULL,
    PRIMARY KEY (exercise_routine_id, exercise_id),
    FOREIGN KEY (exercise_routine_id) REFERENCES exercise_routines (id),
    FOREIGN KEY (exercise_id) REFERENCES exercises (id)
);

CREATE TABLE equipment (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    most_recently_used DATE,
    most_recently_maintained DATE,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

