-- Example SQL Query for Loading Screen Video Configuration
CREATE TABLE IF NOT EXISTS loading_screen_videos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    video_url VARCHAR(255) NOT NULL,
    display_duration INT DEFAULT 30
);

INSERT INTO loading_screen_videos (id, video_url, display_duration)
VALUES (1, 'https://example.com/your-video.mp4', 30);

-- To retrieve the loading screen video configuration
SELECT video_url, display_duration
FROM loading_screen_videos
WHERE id = 1;
