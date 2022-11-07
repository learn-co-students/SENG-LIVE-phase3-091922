class Donation < ActiveRecord::Base
  belongs_to :organization
  belongs_to :donor
  # .donor 
  # .donor= 

  def return_org_by_name 
    self.organization.name
  end

  # one to one relationship 

  # .organization = reader method that when called on an instance of donation, will return the associated organization

  # donation.organization => the organization that donation belongs to

  # .organization = organization => to add the primary key of the organization to the foreign key column of the donation we called it on

  # donation.organization = Organization.find_by(1)

end 

# I want to assocaite dnation with amount of 500 to organization of salvation army 

# how do i find both donation and organization?


# Active Record query methods: 
# Donation.all
# Donation.find(2)
# 

# Organization.find(2)
# Organization.find_by(name: "Salvation Army")

# five_hundred = Donation.find_by(amount: 500)
# sa = Organization.find_by(name: "Salvation Army")
# five_hundred.organization = sa