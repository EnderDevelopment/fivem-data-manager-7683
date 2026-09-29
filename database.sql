CREATE TABLE IF NOT EXISTS fivemscript_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT NOT NULL,
    data_value VARCHAR(255) NOT NULL,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO fivemscript_data (player_id, data_value) VALUES
(1, 'default_value');