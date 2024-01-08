-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/tpxlDU
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


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

CREATE TABLE "category" (
    "category_id" Varchar   NOT NULL,
    "category" Varchar   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
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

CREATE TABLE "subcategory" (
    "subcategory_id" Varchar   NOT NULL,
    "subcategory" Varchar   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategoery_id" FOREIGN KEY("subcategoery_id")
REFERENCES "subcategory" ("subcategory_id");

