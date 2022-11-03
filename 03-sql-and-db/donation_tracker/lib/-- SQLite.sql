-- SQLite
CREATE TABLE organizations (
  id INTEGER PRIMARY KEY, 
  name TEXT, 
  address TEXT
);


-- I need to create a table for Donation class 

CREATE TABLE donations (
    id INTEGER PRIMARY KEY,
    amount INTEGER,
    date TEXT,
    organization_id INTEGER,
    FOREIGN KEY (organization_id) REFERENCES organizations(id)
);

-- ALTER TABLE donations ADD FOREIGN KEY (organization_id) REFERENCES organizations(id);

-- ALTER TABLE donations FOREIGN KEY (organization_id) REFERENCES organizations(organization)id);

INSERT INTO organizations(name, address) VALUES ("Feeding America", "1111 Post st");
INSERT INTO organizations(name, address) VALUES ("ACLU", "2222 Post st");
INSERT INTO organizations(name, address) VALUES ("ASPCA", "3333 Post st");


INSERT INTO donations(amount, date, organization_id) VALUES (100, "10/31/22", 1);
INSERT INTO donations(amount, date, organization_id) VALUES (500, "10/22/22", 2);
INSERT INTO donations(amount, date, organization_id) VALUES (500, "10/31/22", 2);


UPDATE donations SET organization_id = 3
WHERE amount = 100;

SELECT donations.amount, organizations.name AS org FROM donations JOIN organizations ON donations.organization_id = organizations.id;

-- will return all donation records
SELECT * FROM donations; 
