CREATE TABLE IF NOT EXISTS pw_enrollments ( id SERIAL PRIMARY KEY, pw_student_id INTEGER NOT NULL, pw_microschool_id INTEGER NOT NULL, authorized_minutes INTEGER, cents_per_minute INTEGER, during DATERANGE NOT NULL, EXCLUDE USING GIST (pw_student_id WITH =, during WITH &&));
