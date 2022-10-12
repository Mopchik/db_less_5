CREATE TABLE "hospital_station" (
  "statNr" int PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "room" (
  "roomNr" int PRIMARY KEY,
  "beds" int,
  "statNr" int
);

CREATE TABLE "station_personell" (
  "persNr" int PRIMARY KEY,
  "name" varchar,
  "statNr" int,
  "typeIsCaregiver" boolean
);

CREATE TABLE "caregiver" (
  "persNr" int PRIMARY KEY,
  "name" varchar,
  "qualification" varchar
);

CREATE TABLE "doctor" (
  "persNr" int PRIMARY KEY,
  "name" varchar,
  "area" varchar,
  "rank" int
);

CREATE TABLE "patient" (
  "patientNr" int PRIMARY KEY,
  "name" varchar,
  "disease" varchar,
  "persNr" int,
  "room_from" int,
  "room_to" int
);

ALTER TABLE "room" ADD FOREIGN KEY ("statNr") REFERENCES "hospital_station" ("statNr");

ALTER TABLE "station_personell" ADD FOREIGN KEY ("statNr") REFERENCES "hospital_station" ("statNr");

ALTER TABLE "caregiver" ADD FOREIGN KEY ("persNr") REFERENCES "station_personell" ("persNr");

ALTER TABLE "doctor" ADD FOREIGN KEY ("persNr") REFERENCES "station_personell" ("persNr");

ALTER TABLE "patient" ADD FOREIGN KEY ("persNr") REFERENCES "station_personell" ("persNr");

ALTER TABLE "patient" ADD FOREIGN KEY ("room_from") REFERENCES "room" ("roomNr");

ALTER TABLE "patient" ADD FOREIGN KEY ("room_to") REFERENCES "room" ("roomNr");
