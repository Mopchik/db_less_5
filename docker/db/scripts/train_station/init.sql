CREATE TABLE "station" (
  "name" varchar PRIMARY KEY,
  "tracks" int,
  "city_name" varchar
);

CREATE TABLE "ways" (
  "id" int PRIMARY KEY,
  "station_start_name" varchar,
  "station_end_name" varchar
);

CREATE TABLE "train" (
  "trainNr" int PRIMARY KEY,
  "length" float,
  "way_id" int
);

CREATE TABLE "city" (
  "name" varchar PRIMARY KEY,
  "region" varchar
);

ALTER TABLE "ways" ADD FOREIGN KEY ("station_start_name") REFERENCES "station" ("name");

ALTER TABLE "ways" ADD FOREIGN KEY ("station_end_name") REFERENCES "station" ("name");

ALTER TABLE "station" ADD FOREIGN KEY ("city_name") REFERENCES "city" ("name");

ALTER TABLE "train" ADD FOREIGN KEY ("way_id") REFERENCES "ways" ("id");
