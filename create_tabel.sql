CREATE TABLE members (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_name TEXT NOT NULL,
    password TEXT NOT NULL CHECK (LENGTH(password) >= 8),
    email TEXT NOT NULL UNIQUE CHECK (email LIKE '%_@__%.__%'),
    phone_number TEXT CHECK (phone_number GLOB '[0-9]*')
);