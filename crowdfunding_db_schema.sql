DROP TABLE campaign if EXISTS;  -- Must be dropped first due to foreign keys
DROP TABLE contacts IF EXISTS;
DROP TABLE category IF EXISTS;
DROP TABLE subcategory IF EXISTS;

CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE category (
    category_id TEXT PRIMARY KEY,
    category TEXT NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id TEXT PRIMARY KEY,
    subcategory TEXT NOT NULL
);

CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER NOT NULL,
    company_name TEXT NOT NULL,
    description TEXT NOT NULL,
    goal INTEGER NOT NULL,
    pledged INTEGER NOT NULL,
    outcome TEXT NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(2)
    currency VARCHAR(3)
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id TEXT NOT NULL,
    subcategory_id TEXT NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES (contacts.contact_id),
    FOREIGN KEY (category_id) REFERENCES (category.category_id),
    FOREIGN KEY (subcategory_id) REFERENCES (subcategory.subcategory_id)
);