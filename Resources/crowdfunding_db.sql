---table creation in order of foreign keys

CREATE TABLE "campaign" (
    "cf_id" Integer   NOT NULL,
    "contact_id" Integer   NOT NULL,
    "company_name" Varchar   NOT NULL,
    "blurd" Varchar   NOT NULL,
    "goal" Integer   NOT NULL,
    "pledged" Integer   NOT NULL,
    "outcome" Varchar   NOT NULL,
    "backers_count" Integer   NOT NULL,
    "country" Varchar   NOT NULL,
    "currency" Varchar   NOT NULL,
    "launched_at" Integer   NOT NULL,
    "deadline" Integer   NOT NULL,
    "category_id" Varchar   NOT NULL,
    "subcategoery_id" Varchar   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" Integer   NOT NULL,
    "first_name" Varchar   NOT NULL,
    "last_name" Varchar   NOT NULL,
    "email" Varchar   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);


CREATE TABLE "category" (
    "category_id" Varchar   NOT NULL,
    "category" Varchar   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" Varchar   NOT NULL,
    "subcategory" Varchar   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

---Verify table creation
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM subcategory;


---import csv files
COPY campaign FROM '/Resources/campaign.csv' DELIMITER ',' CSV HEADER;
COPY contacts FROM 'Resources/contacts.csv' DELIMITER ',' CSV HEADER;
COPY category FROM 'Resources/category.csv' DELIMITER ',' CSV HEADER;
COPY subcategory FROM 'Resources/subcategory.csv' DELIMITER ',' CSV HEADER;


---Verify table creation
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM subcategory;

