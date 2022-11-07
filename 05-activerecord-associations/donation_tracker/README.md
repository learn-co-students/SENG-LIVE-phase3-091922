# Active Record Associations

### Lecture Take Aways

- Active Record Associations: One to Many
- Has many, belongs to
- Active Record Associations: Many to Many
- Has many, through
- Join models
- Custom instance and class methods 

### Lecture Deliverables

- Create a new class Donor and donors table
- A donor will have a name attribute
- Set up associations between Donor, Donations, and Organization
- Modify the Donations table to reflect the newly defined associations with a foreign key column.

### Association Macros 
- has_many
- belongs_to
- has many, through 


### Domain modeling 

belongs_to:
- one to one relationship
- child table 
- foreign key column for the parent table
- what is a foreign key column: 
  - points to parent table id of related record
  - connects two tables
  - the value of this column needs to be an ID, more specifically the parent_id

has_many: 
- one to many relationship
- parent table

has_many through


organization
- attr: name 
- has_many :donations 
- has_many :donors, through: donations

donation 
- attr: amount, completed, date
- belongs_to :organization
- foreign_key column: organization_id
- belongs_to :donor 

donor
- attr: name
- has_many :organizations, through: donations 
- has_many :donations 

