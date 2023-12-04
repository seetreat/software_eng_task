CREATE TABLE cities (
  city_id INT PRIMARY KEY,
  city_name VARCHAR(50) NOT NULL
);

CREATE TABLE connections (
  city_id1 INT NOT NULL,
  city_id2 INT NOT NULL,
  distance INT NOT NULL,
  FOREIGN KEY (city_id1) REFERENCES cities(city_id),
  FOREIGN KEY (city_id2) REFERENCES cities(city_id)
);

INSERT INTO cities (city_id, city_name) VALUES
(1, 'Sydney'),
(2, 'Melbourne'),
(3, 'Brisbane'),
(4, 'Perth'),
(5, 'Adelaide'),
(6, 'Canberra'),
(7, 'Hobart'),
(8, 'Darwin'),
(9, 'Cairns'),
(10, 'Alice Springs');

INSERT INTO connections (city_id1, city_id2, distance) VALUES
(1, 2, 870),
(1, 4, 3935),
(1, 5, 1408),
(1, 8, 4425),
(1, 10, 2774),
(2, 3, 1733),
(2, 4, 3417),
(2, 6, 449),
(2, 7, 1529),
(2, 9, 2492),
(3, 1, 922),
(3, 4, 2875),
(3, 5, 1566),
(3, 9, 2466),
(4, 2, 3417),
(4, 5, 2110),
(4, 7, 4226),
(4, 8, 4042),
(4, 9, 3933),
(5, 2, 1131),
(5, 4, 2110),
(5, 10, 1427),
(6, 2, 449),
(6, 3, 647),
(6, 4, 2577),
(6, 9, 2179),
(7, 2, 1529),
(7, 4, 4226),
(7, 6, 1222),
(7, 8, 3546),
(7, 10, 1533),
(8, 1, 4425),
(8, 7, 3546),
(8, 9, 4338),
(9, 1, 2730),
(9, 2, 2492),
(9, 3, 2466),
(9, 10, 496);
