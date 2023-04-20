-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/U9Okmn
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Stock_List" (
    "Symbol" VARCHAR   NOT NULL,
    "Name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Stock_List" PRIMARY KEY (
        "Symbol"
     )
);

CREATE TABLE "healthcare_data" (
    "Date" DATE   NOT NULL,
    "Symbol" VARCHAR   NOT NULL,
    "Name" VARCHAR   NOT NULL,
    "Open" FLOAT   NOT NULL
);

CREATE TABLE "Estate_Sector" (
    "Date" DATE   NOT NULL,
    "Symbol" VARCHAR   NOT NULL,
    "Name" VARCHAR   NOT NULL,
    "Open" FLOAT   NOT NULL
);

CREATE TABLE "Technology_Sector" (
    "Date" DATE   NOT NULL,
    "Symbol" VARCHAR   NOT NULL,
    "Name" VARCHAR   NOT NULL,
    "Open" FLOAT   NOT NULL
);

CREATE TABLE "Financial_Sector" (
    "Date" DATE   NOT NULL,
    "Symbol" VARCHAR   NOT NULL,
    "Name" VARCHAR   NOT NULL,
    "Open" FLOAT   NOT NULL
);

CREATE TABLE "Energy_Sector" (
    "Date" DATE   NOT NULL,
    "Symbol" VARCHAR   NOT NULL,
    "Name" VARCHAR   NOT NULL,
    "Open" FLOAT   NOT NULL
);

ALTER TABLE "healthcare_data" ADD CONSTRAINT "fk_healthcare_data_Symbol" FOREIGN KEY("Symbol")
REFERENCES "Stock_List" ("Symbol");

ALTER TABLE "Estate_Sector" ADD CONSTRAINT "fk_Estate_Sector_Symbol" FOREIGN KEY("Symbol")
REFERENCES "Stock_List" ("Symbol");

ALTER TABLE "Technology_Sector" ADD CONSTRAINT "fk_Technology_Sector_Symbol" FOREIGN KEY("Symbol")
REFERENCES "Stock_List" ("Symbol");

ALTER TABLE "Financial_Sector" ADD CONSTRAINT "fk_Financial_Sector_Symbol" FOREIGN KEY("Symbol")
REFERENCES "Stock_List" ("Symbol");

ALTER TABLE "Energy_Sector" ADD CONSTRAINT "fk_Energy_Sector_Symbol" FOREIGN KEY("Symbol")
REFERENCES "Stock_List" ("Symbol");

