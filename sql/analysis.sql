USE campuspulse;

-- ==========================================
-- 1. CHECK TABLES
-- ==========================================

SHOW TABLES;


-- ==========================================
-- 2. RECORD COUNT
-- ==========================================

SELECT 'Library' AS module, COUNT(*) AS records
FROM library_activity

UNION ALL

SELECT 'Lab', COUNT(*)
FROM lab_utilization

UNION ALL

SELECT 'Canteen', COUNT(*)
FROM canteen_sales

UNION ALL

SELECT 'Transport', COUNT(*)
FROM transport_activity;


-- ==========================================
-- 3. LIBRARY - FULL DATA
-- ==========================================

SELECT
    activity_date,
    day_name,
    activity_time,
    students_entry,
    students_exit,
    books_issued,
    books_returned,
    library_activity,
    net_student_change
FROM library_activity
ORDER BY activity_date, activity_time;


-- ==========================================
-- 4. LIBRARY - KPI
-- ==========================================

SELECT
    SUM(students_entry) AS total_entries,
    SUM(students_exit) AS total_exits,
    SUM(books_issued) AS total_books_issued,
    SUM(books_returned) AS total_books_returned,
    SUM(net_student_change) AS net_student_change
FROM library_activity;


-- ==========================================
-- 5. LIBRARY - ACTIVITY BY DAY
-- ==========================================

SELECT
    day_name,
    SUM(library_activity) AS total_library_activity
FROM library_activity
GROUP BY day_name
ORDER BY total_library_activity DESC;


-- ==========================================
-- 6. LAB - FULL DATA
-- ==========================================

SELECT
    activity_date,
    day_name,
    activity_time,
    lab,
    total_systems,
    used_systems,
    students_present,
    avg_usage_min,
    utilization_percent
FROM lab_utilization
ORDER BY utilization_percent DESC;


-- ==========================================
-- 7. LAB - KPI
-- ==========================================

SELECT
    SUM(total_systems) AS total_systems,
    SUM(used_systems) AS total_used_systems,
    SUM(students_present) AS total_students_present,
    ROUND(AVG(avg_usage_min), 2) AS average_usage_minutes,
    ROUND(AVG(utilization_percent), 2) AS average_utilization_percent
FROM lab_utilization;


-- ==========================================
-- 8. LAB - UTILIZATION BY LAB
-- ==========================================

SELECT
    lab,
    ROUND(AVG(utilization_percent), 2) AS average_utilization_percent
FROM lab_utilization
GROUP BY lab
ORDER BY average_utilization_percent DESC;


-- ==========================================
-- 9. CANTEEN - FULL DATA
-- ==========================================

SELECT
    activity_date,
    day_name,
    activity_time,
    food_category,
    item,
    quantity_sold,
    customers,
    revenue,
    revenue_per_customer
FROM canteen_sales
ORDER BY revenue DESC;


-- ==========================================
-- 10. CANTEEN - KPI
-- ==========================================

SELECT
    SUM(quantity_sold) AS total_items_sold,
    SUM(customers) AS total_customers,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue_per_customer), 2) AS average_revenue_per_customer
FROM canteen_sales;


-- ==========================================
-- 11. CANTEEN - SALES BY CATEGORY
-- ==========================================

SELECT
    food_category,
    SUM(quantity_sold) AS total_quantity_sold,
    SUM(customers) AS total_customers,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM canteen_sales
GROUP BY food_category
ORDER BY total_revenue DESC;


-- ==========================================
-- 12. CANTEEN - ITEM-WISE REVENUE
-- ==========================================

SELECT
    item,
    SUM(quantity_sold) AS total_quantity_sold,
    SUM(customers) AS total_customers,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM canteen_sales
GROUP BY item
ORDER BY total_revenue DESC;


-- ==========================================
-- 13. TRANSPORT - FULL DATA
-- ==========================================

SELECT
    activity_date,
    day_name,
    activity_time,
    route,
    stop,
    bus_capacity,
    students_boarded,
    students_dropped,
    distance_km,
    boarding_utilization_percent
FROM transport_activity
ORDER BY boarding_utilization_percent DESC;


-- ==========================================
-- 14. TRANSPORT - KPI
-- ==========================================

SELECT
    SUM(bus_capacity) AS total_bus_capacity,
    SUM(students_boarded) AS total_students_boarded,
    SUM(students_dropped) AS total_students_dropped,
    ROUND(SUM(distance_km), 2) AS total_distance_km,
    ROUND(AVG(boarding_utilization_percent), 2)
        AS average_boarding_utilization
FROM transport_activity;


-- ==========================================
-- 15. TRANSPORT - ROUTE-WISE ANALYSIS
-- ==========================================

SELECT
    route,
    SUM(students_boarded) AS total_students_boarded,
    SUM(students_dropped) AS total_students_dropped,
    ROUND(AVG(boarding_utilization_percent), 2)
        AS average_boarding_utilization
FROM transport_activity
GROUP BY route
ORDER BY average_boarding_utilization DESC;


-- ==========================================
-- 16. TRANSPORT - STOP-WISE ANALYSIS
-- ==========================================

SELECT
    stop,
    SUM(students_boarded) AS total_students_boarded,
    SUM(students_dropped) AS total_students_dropped,
    ROUND(AVG(boarding_utilization_percent), 2)
        AS average_boarding_utilization
FROM transport_activity
GROUP BY stop
ORDER BY total_students_boarded DESC;