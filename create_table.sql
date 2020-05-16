CREATE TABLE IF NOT EXISTS charities (
    "Reg charity number" int8,
    "Sub charity number" int4,
    "Charity name" text,
    "Status" text,
    "Date for financial year ending" date,
    "Total income" text,
    "Total spending" text,
    "Charitable spending" text,
    "Income generation and governance" text,
    "Retained for future use" text,
    "Website" text,
    "Email" text,
    "Telephone" text,
    "Type" text,
    "Company number" text,
    "What the charity does" text,
    "Who the charity helps" text,
    "How the charity works" text
);

CREATE UNIQUE INDEX IF NOT EXISTS reg_charity_number ON charities ("Reg charity number");