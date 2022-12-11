# Intro to Databases
### Lecture Take Aways

- The benefit of databases in applications
- Relationship between a database and an API
- Mapping columns and rows to classes and instances
- Basic SQL queries
- Primary Keys
- Foreign Keys

### Current application problems:

1. No way of remembering the objects. Although there is an all array that stores instances, once the application session is over, this collection reverts back to an empty array.
    <details>
    <summary>Solution:</summary>
        Persist and manage data by establishing a database
    </details>

2. Organization is defined as an attribute on the donation class. However we can imagine that a single organization might receive multiple donations. This could create duplicate data in our table which is not best practice.
    <details>
    <summary>Solution:</summary>
        Isolate organization as its own class and relate donations to an individual organization by using a foreign key column
    </details>


### What is SQL?

- Structured Query Language
- Language used to communicate with and manage databases
- It is a whole science in and of itself. We learn the very basics to understand Active Record better, we can also use basic knowledge to configure and customize database communications outside of conventions

Keywords:

#### CREATE TABLE (establish a table)

```sql
CREATE TABLE tablename(
    id INTEGER PRIMARY KEY,
    attribute TYPE,
    attribute TYPE
)
```

#### SELECT (retrieve)

```sql
SELECT (column name) FROM table_name
```

#### INSERT (persist)

```sql
INSERT INTO table (attribute, attribute, attribute) VALUES (value, value, value)

```

#### UPDATE

```sql
UPDATE table
SET column = ?, column = ?
WHERE id = ?;
```

### What is ORM

- Object Relational Mapping
- What does that mean? Being able to access our relational databases with a programming language that follows the OO paradigm, in this case, Ruby. 
- Essentially, we're going to combine Ruby and SQL to perform powerful behaviors on our database tables.
- This works by mapping classes and instances to database tables and rows
- CAUTION: Do no mix the two up. While we mimick our Ruby objects as records in the database, they are not the same thing. `Ruby object != database record`
- ORM's solve repetition and organization problems
- Get ready for Active Record!

![ORM](./donations_table.png)

### Relating our tables

- A donation belongs to an organization
- An organization has many donations

Foreign keys:
- A foreign key column will be owned by the 'child object'. This is the object that belongs to another object. In this domain model, the child object is the donation
- Column name will be `parent_id` 
- This column will store the primary key of the parent object
