CREATE TABLE IF NOT EXISTS admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    username VARCHAR(25) NOT NULL,
    password VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS amenities (
    a_id INT AUTO_INCREMENT PRIMARY KEY,
    a_type VARCHAR(1) NOT NULL,
    a_status INT NOT NULL,
    a_capacity INT NOT NULL,
    a_title VARCHAR(200) NOT NULL,
    a_description TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS rooms (
    r_id INT AUTO_INCREMENT PRIMARY KEY,
    r_number INT NOT NULL,
    r_type VARCHAR(1) NOT NULL,
    r_capacity INT NOT NULL,
    r_status INT NOT NULL
);

CREATE TABLE IF NOT EXISTS bookings (
    b_id INT AUTO_INCREMENT PRIMARY KEY,
    r_id INT,
    g_id INT,
    b_status INT NOT NULL,
    a_id INT,
    st DATE NOT NULL,
    et DATE NOT NULL,
    f_type VARCHAR(1) NOT NULL,
    f_cost DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (r_id) REFERENCES rooms(r_id),
    FOREIGN KEY (g_id) REFERENCES guests(g_id),
    FOREIGN KEY (a_id) REFERENCES amenities(a_id)
);

CREATE TABLE IF NOT EXISTS guests (
    g_id INT AUTO_INCREMENT PRIMARY KEY,
    g_name VARCHAR(30) NOT NULL,
    g_email VARCHAR(200) NOT NULL,
    g_count INT NOT NULL,
    g_streetno TEXT NOT NULL,
    g_city VARCHAR(200) NOT NULL,
    g_state VARCHAR(200) NOT NULL,
    g_country VARCHAR(20) NOT NULL,
    g_pincode CHAR(6) NOT NULL
);

CREATE TABLE IF NOT EXISTS charges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(1) NOT NULL,
    cost DECIMAL(10,2) NOT NULL
);
