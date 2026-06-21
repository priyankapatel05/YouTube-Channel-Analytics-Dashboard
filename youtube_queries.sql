-- Row Counts

SELECT COUNT(*) FROM video_performance;

SELECT COUNT(*) FROM daily_video_views;

SELECT COUNT(*) FROM channel_daily_views;


-- Top 10 Videos

SELECT
video_title,
views
FROM video_performance
ORDER BY views DESC
LIMIT 10;


-- Top Subscribers

SELECT
video_title,
subscribers
FROM video_performance
ORDER BY subscribers DESC
LIMIT 10;


-- Highest Watch Time

SELECT
video_title,
watch_time_hours
FROM video_performance
ORDER BY watch_time_hours DESC
LIMIT 10;


-- Monthly Growth

SELECT
DATE_TRUNC('month', date) AS month,
SUM(views) AS total_views
FROM channel_daily_views
GROUP BY month
ORDER BY month;