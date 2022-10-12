CREATE TABLE "book" (
  "ISBN" int PRIMARY KEY,
  "page" int,
  "year" int,
  "Author" varchar,
  "name" varchar,
  "category_name" varchar,
  "library_name" varchar,
  "publisher_name" varchar,
  "temporary_reader_id" int
);

CREATE TABLE "category" (
  "name" varchar PRIMARY KEY,
  "upper_category_name" varchar
);

CREATE TABLE "library" (
  "name" varchar PRIMARY KEY
);

CREATE TABLE "publisher" (
  "name" varchar PRIMARY KEY,
  "address" varchar
);

CREATE TABLE "reader" (
  "id" int PRIMARY KEY,
  "first_name" varchar,
  "second_name" varchar,
  "date_of_birthday" date,
  "address" varchar,
  "library_name" varchar
);

ALTER TABLE "book" ADD FOREIGN KEY ("category_name") REFERENCES "category" ("name");

ALTER TABLE "book" ADD FOREIGN KEY ("library_name") REFERENCES "library" ("name");

ALTER TABLE "book" ADD FOREIGN KEY ("publisher_name") REFERENCES "publisher" ("name");

ALTER TABLE "book" ADD FOREIGN KEY ("temporary_reader_id") REFERENCES "reader" ("id");

ALTER TABLE "category" ADD FOREIGN KEY ("upper_category_name") REFERENCES "category" ("name");

ALTER TABLE "reader" ADD FOREIGN KEY ("library_name") REFERENCES "library" ("name");
