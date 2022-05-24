DROP TABLE IF EXISTS travellers;
CREATE TABLE travellers (
  id INT,
  firstname VARCHAR(20),
  city VARCHAR(20)
);
COPY travellers
FROM $str$/code/data/travellers.csv$str$
DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS destinations;
CREATE TABLE destinations (
  id INT,
  holiday VARCHAR(20),
  trav_id INT
);
COPY destinations
FROM $str$/code/data/destinations.csv$str$
DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS trips;
CREATE TABLE trips (
  id INT,
  trav_id INT,
  dest_id INT
);
COPY trips
FROM $str$/code/data/trips.csv$str$
DELIMITER ',' CSV HEADER;
