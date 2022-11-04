class Donation < ActiveRecord::Base

# we cna now perform CRUD actions with our data => database through these methods:

# CREATE methods 

# .new will instantiate a NEW RUBY object, but will not persist it
d = Donation.new(amount: 400, date: "11/04/22", completed: false)

# .save will be called on the new instance that we created AND persist it to the db 
d.save

# .create will instantiate AND PERISTS our data to the db 
Donation.create(amount: 400, date: "11/04/22", completed: false)

# READ methods

# .all : that will return all records in the given table
Donation.all


Donation.all.where(date: "11/05/22")

# .find will accept and id and look specificlaly and only for an id 

Donation.find(1)

# .find_by(attr: value)

Organization.find_by(name: "Feeding America")
Organization.find_by_name("Feeding America")


# UPDATE method 

# .update(attr: value)


# flow that we need to work through 
#  1. find the record
d = Donation.find(12)
# 2. call .update
d.update(amount: 100)

# DELETE method 

# find the record 
d = Donation.find(22)
# delete the record 
d.delete

#to delete all records: Donation.destroy_all

end 

