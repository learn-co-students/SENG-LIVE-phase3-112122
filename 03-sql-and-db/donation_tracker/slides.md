---
presentation:
  enableSpeakerNotes: true
  showNotes: false
  width: 1200
  height: 900
---

<style>
  table {
    width: 100%;
    overflow: scroll;
  }
</style>

# Intro to Databases

---

<!-- slide data-separator="^\n\n\n"
         data-separator-vertical="^\n\n" data-separator-notes="^Note:"-->

<!-- slide -->

## Putting things in Context.

Databases allow us to store our data outside of our code and we can do CRUD and have it persist to the next session.

<!-- slide -->

## ORM Analogy

![ORM Analogy](https://res.cloudinary.com/dnocv6uwb/image/upload/v1651161995/Flatiron%20Slideshow%20images/analogy.drawio.svg)

<!-- slide -->

## Where we're headed

![The Pattern](https://raw.githubusercontent.com/learn-co-students/phase3-lecture-repo-template/04_begin_intro_to_databases/04_intro_to_databases/demo/object-method-sql-query-return.drawio.svg?token=GHSAT0AAAAAABS54V3M5DXF4WXV6T3OUTPUYTJ6M6A)

<!-- slide -->

## The Flow

At the end of the phase, we'll be building out an API that will sit between our React app and our database:

- React App
- Fetch to API
- API interacts with Database
- Sends response back to Browser
- Resolved promise from fetch leads to change in state
- React updates the DOM

<!-- slide -->

## Database Examples

### Whats wrong with this table?

![bad-data-1](../assets/bad-data-1.png)

### Whats wrong with this table?

![bad-data-2](../assets/bad-data-2.png)

### Correct table

![first_normal_form](../assets/first_normal_form.png)

### one-to-many

![one-to-many](../assets/one-to-many.png)

# many-to-many

![many-to-many](../assets/many-to-many.png)

## Rover Clone

### Key Features we're going to add to our Rover Clone:

- Add persistence
  - A Read (SELECT) operation to retrieve persisted pets
  - A Create (INSERT INTO) operation to persists pets
  - An Update (UPDATE) operation to update a persisted pet.
  - An Delete (DELETE) operation to delete a persisted pet.

<!-- slide -->

The Following Slides outline the configuration changes necessary to integrate a SQLite database into our application.

<!-- slide -->

## DB Config

### Add sqlite3 gem to Gemfile

```bash
bundle add sqlite3
```

Install [DB Browser for SQLite](https://sqlitebrowser.org/)

WSL [Using SQLite with VS Code Extension](https://www.youtube.com/watch?v=bKixKfb1J1o)

- Right click DB and select open Database
- In SQLite Explorer right click the Database and select new query
- Wright the query, highlight the query, click right and select run query

<!-- slide -->

## SQL

SQL(Structured Query Language). A language that allows us to manipulate databases.

SQLite is a library that will allow us to create a Relational SQL database.

Relational database is a database of tables and rows with data points that relate to each other. Tables have unique Primary keys and columns that data of varying types.

#### Delete tables

DROP TABLE dogs;

#### Create the Tables for pets and owners

```
CREATE TABLE owners(
  id INTEGER PRIMARY KEY,
  name TEXT,
  address TEXT,
  email TEXT,
  phone INTEGER
);


CREATE TABLE pets(
  id INTEGER PRIMARY KEY,
  owner_id INTEGER,
  name TEXT,
  birthdate INTEGER,
  breed TEXT,
  favorite_treats TEXT,
  last_fed_at DATETIME,
  last_walked_at DATETIME,
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);
```

### Update table

```
ALTER TABLE pets
ADD COLUMN image_url TEXT;

ALTER TABLE pets
RENAME COLUMN birthdate TO age;

```

### Add data to table

```
INSERT INTO owners(name, address, email, phone)
VALUES ('ix', '999 8th st Seattle Wa 90000', 'ix_is_cool@gmail.com', '9991231234');

INSERT INTO owners(name, address, email, phone)
VALUES ('Adam', '000 dr sw San Francisco CA 90000', 'cyberpunk999@gmail.com', '0001239999');


INSERT INTO pets(name, age, breed, favorite_treats, image_url, owner_id)
VALUES ('Luke', '2', 'domestic longhair', 'bacon', 'https://res.cloudinary.com/dnocv6uwb/image/upload/v1631229064/zx6CPsp_d_utkmww.webp', 2);

INSERT INTO pets(name, age, breed, favorite_treats, image_url, owner_id)
VALUES ('rose', '11', 'domestic longhair', 'house plants', 'https://res.cloudinary.com/dnocv6uwb/image/upload/v1631229038/EEE90-E50-25-F0-4-DF0-98-B2-0-E0-B6-F9-BAA89_menwgg.jpg', 1);


INSERT INTO pets(name, age, breed, favorite_treats, image_url, owner_id)
VALUES ('leia', '2', 'domestic Shorthair', 'bacon', 'https://res.cloudinary.com/dnocv6uwb/image/upload/v1631229011/8136c615d670e214f80de4e7fcdf8607--cattle-dogs-mans_vgyqqa.jpg', 2);

INSERT INTO pets(name, age, breed, favorite_treats, image_url, owner_id)
VALUES ('Chop', '5', 'shiba inu', 'cheese', 'https://res.cloudinary.com/dnocv6uwb/image/upload/v1629822267/cdbd77592e3ef91e8cc1cf67d936f94f_fkozjt.jpg', 1);

```

### Query Table data

```
SELECT * FROM pets

SELECT * FROM pets
WHERE name = 'rose';

SELECT * FROM pets
WHERE favorite_treats = 'bacon';

SELECT * FROM pets
WHERE age < 5;

UPDATE pets
SET age = 12
WHERE name = 'rose';

UPDATE pets
SET favorite_treats = 'cheese'


DELETE FROM pets WHERE name = 'Chop';

```

#### Join tables

#### one-to-many

```
SELECT pets.name, owners.name as 'owner'
FROM pets
JOIN owners ON pets.owner_id = owners.id;
```

#### many-to-many

```
CREATE TABLE handlers(
  id INTEGER PRIMARY KEY,
  name TEXT,
  email TEXT,
  phone INTEGER
);



CREATE TABLE appointments(
  id INTEGER PRIMARY KEY,
  time DATETIME,
  request TEXT,
  pet_id INTEGER,
  handler_id INTEGER,
  FOREIGN KEY (handler_id) REFERENCES handlers(id),
  FOREIGN KEY (pet_id) REFERENCES pets(id)
);


INSERT INTO handlers (name, email, phone)
VALUES ('gannie', 'grannie52@gmail.com', '1239087654');
INSERT INTO handlers (name, email, phone)
VALUES ('dorian', 'blue_boy@gmail.com', '8887776666');





INSERT INTO appointments (time, request, pet_id, handler_id)
VALUES ('2022-07-31 00:00:00', 'drop-in', 1,1);

INSERT INTO appointments (time, request, pet_id, handler_id)
VALUES ('2022-03-01 00:00:00', 'drop-in', 1,1);

INSERT INTO appointments (time, request, pet_id, handler_id)
VALUES ('2022-06-01 00:00:00', 'drop-in', 1,2);

INSERT INTO appointments (time, request, pet_id, handler_id)
VALUES ('2022-05-21 00:00:00', 'walk', 2,2);


SELECT
  pets.name,
  handlers.name,
  appointments.request,
  appointments.time
FROM appointments
JOIN pets
  ON appointments.pet_id = pets.id
JOIN handlers
  ON appointments.handler_id = handlers.id;


SELECT DISTINCT
  pets.name,
  handlers.name
FROM appointments
JOIN pets
  ON appointments.pet_id = pets.id
JOIN handlers
  ON appointments.handler_id = handlers.id
AND pets.name = 'Luke';



```
