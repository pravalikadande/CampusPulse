USE campuspulse;

CREATE TABLE IF NOT EXISTS transport_activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    activity_date DATE,
    day_name VARCHAR(20),
    activity_time TIME,
    route VARCHAR(50),
    stop VARCHAR(50),
    bus_capacity INT,
    students_boarded INT,
    students_dropped INT,
    distance_km DECIMAL(10,2),
    boarding_utilization_percent DECIMAL(5,2)
);

TRUNCATE TABLE transport_activity;

USE campuspulse;

CREATE TABLE IF NOT EXISTS transport_activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    activity_date DATE,
    day_name VARCHAR(20),
    activity_time TIME,
    route VARCHAR(50),
    stop VARCHAR(50),
    bus_capacity INT,
    students_boarded INT,
    students_dropped INT,
    distance_km DECIMAL(10,2),
    boarding_utilization_percent DECIMAL(5,2)
);

TRUNCATE TABLE transport_activity;

INSERT INTO transport_activity
(activity_date, day_name, activity_time, route, stop, bus_capacity,
 students_boarded, students_dropped, distance_km, boarding_utilization_percent)
VALUES
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:00:00', 'Route_1', 'Main_Gate', 50, 42, 0, 8, 0.84),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:15:00', 'Route_1', 'Railway_Station', 50, 18, 4, 10, 0.36),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:30:00', 'Route_1', 'Market', 50, 14, 8, 12, 0.28),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:45:00', 'Route_1', 'Colony', 50, 9, 12, 15, 0.18),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 08:00:00', 'Route_1', 'College_Gate', 50, 2, 41, 18, 0.04),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:00:00', 'Route_2', 'Main_Gate', 45, 38, 0, 7, 0.8444444444444444),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:15:00', 'Route_2', 'Bus_Stand', 45, 16, 3, 9, 0.35555555555555557),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:30:00', 'Route_2', 'Hospital', 45, 11, 7, 11, 0.24444444444444444),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:45:00', 'Route_2', 'Village_Center', 45, 8, 10, 14, 0.17777777777777778),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 08:00:00', 'Route_2', 'College_Gate', 45, 3, 35, 17, 0.06666666666666667),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:00:00', 'Route_3', 'Main_Gate', 55, 47, 0, 9, 0.8545454545454545),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:15:00', 'Route_3', 'Market', 55, 21, 5, 11, 0.38181818181818183),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:30:00', 'Route_3', 'Temple', 55, 13, 9, 13, 0.23636363636363636),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 07:45:00', 'Route_3', 'Highway_Stop', 55, 7, 15, 17, 0.12727272727272726),
('2026-07-01 00:00:00', 'Wednesday', '1900-01-01 08:00:00', 'Route_3', 'College_Gate', 55, 2, 43, 21, 0.03636363636363636),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:00:00', 'Route_1', 'Main_Gate', 50, 45, 0, 8, 0.9),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:15:00', 'Route_1', 'Railway_Station', 50, 20, 5, 10, 0.4),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:30:00', 'Route_1', 'Market', 50, 16, 9, 12, 0.32),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:45:00', 'Route_1', 'Colony', 50, 10, 13, 15, 0.2),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 08:00:00', 'Route_1', 'College_Gate', 50, 2, 44, 18, 0.04),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:00:00', 'Route_2', 'Main_Gate', 45, 41, 0, 7, 0.9111111111111111),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:15:00', 'Route_2', 'Bus_Stand', 45, 18, 4, 9, 0.4),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:30:00', 'Route_2', 'Hospital', 45, 12, 8, 11, 0.26666666666666666),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:45:00', 'Route_2', 'Village_Center', 45, 9, 11, 14, 0.2),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 08:00:00', 'Route_2', 'College_Gate', 45, 3, 38, 17, 0.06666666666666667),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:00:00', 'Route_3', 'Main_Gate', 55, 51, 0, 9, 0.9272727272727272),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:15:00', 'Route_3', 'Market', 55, 23, 6, 11, 0.41818181818181815),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:30:00', 'Route_3', 'Temple', 55, 15, 10, 13, 0.2727272727272727),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 07:45:00', 'Route_3', 'Highway_Stop', 55, 8, 16, 17, 0.14545454545454545),
('2026-07-02 00:00:00', 'Thursday', '1900-01-01 08:00:00', 'Route_3', 'College_Gate', 55, 2, 47, 21, 0.03636363636363636),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:00:00', 'Route_1', 'Main_Gate', 50, 48, 0, 8, 0.96),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:15:00', 'Route_1', 'Railway_Station', 50, 22, 5, 10, 0.44),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:30:00', 'Route_1', 'Market', 50, 17, 10, 12, 0.34),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:45:00', 'Route_1', 'Colony', 50, 11, 14, 15, 0.22),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 08:00:00', 'Route_1', 'College_Gate', 50, 2, 46, 18, 0.04),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:00:00', 'Route_2', 'Main_Gate', 45, 43, 0, 7, 0.9555555555555556),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:15:00', 'Route_2', 'Bus_Stand', 45, 19, 4, 9, 0.4222222222222222),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:30:00', 'Route_2', 'Hospital', 45, 13, 8, 11, 0.28888888888888886),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:45:00', 'Route_2', 'Village_Center', 45, 9, 12, 14, 0.2),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 08:00:00', 'Route_2', 'College_Gate', 45, 3, 40, 17, 0.06666666666666667),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:00:00', 'Route_3', 'Main_Gate', 55, 53, 0, 9, 0.9636363636363636),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:15:00', 'Route_3', 'Market', 55, 24, 6, 11, 0.43636363636363634),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:30:00', 'Route_3', 'Temple', 55, 16, 11, 13, 0.2909090909090909),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 07:45:00', 'Route_3', 'Highway_Stop', 55, 9, 17, 17, 0.16363636363636364),
('2026-07-03 00:00:00', 'Friday', '1900-01-01 08:00:00', 'Route_3', 'College_Gate', 55, 2, 49, 21, 0.03636363636363636),
('2026-07-04 00:00:00', 'Saturday', '1900-01-01 07:00:00', 'Route_1', 'Main_Gate', 50, 35, 0, 8, 0.7),
('2026-07-04 00:00:00', 'Saturday', '1900-01-01 07:15:00', 'Route_1', 'Railway_Station', 50, 14, 3, 10, 0.28),
('2026-07-04 00:00:00', 'Saturday', '1900-01-01 07:30:00', 'Route_1', 'Market', 50, 10, 6, 12, 0.2),
('2026-07-04 00:00:00', 'Saturday', '1900-01-01 07:45:00', 'Route_1', 'Colony', 50, 7, 9, 15, 0.14),
('2026-07-04 00:00:00', 'Saturday', '1900-01-01 08:00:00', 'Route_1', 'College_Gate', 50, 2, 32, 18, 0.04),
('2026-07-04 00:00:00', 'Saturday', '1900-01-01 07:00:00', 'Route_2', 'Main_Gate', 45, 32, 0, 7, 0.7111111111111111),
('2026-07-04 00:00:00', 'Saturday', '1900-01-01 07:15:00', 'Route_2', 'Bus_Stand', 45, 13, 3, 9, 0.28888888888888886),
('2026-07-04 00:00:00', 'Saturday', '1900-01-01 07:30:00', 'Route_2', 'Hospital', 45, 9, 6, 11, 0.2),
('2026-07-04 00:00:00', 'Saturday', '1900-01-01 07:45:00', 'Route_2', 'Village_Center', 45, 6, 8, 14, 0.13333333333333333),
('2026-07-04 00:00:00', 'Saturday', '1900-01-01 08:00:00', 'Route_2', 'College_Gate', 45, 2, 29, 17, 0.044444444444444446);

SELECT COUNT(*) AS total_records FROM transport_activity;
