class Organization < ActiveRecord::Base
  has_many :donations
  has_many :donors, through: :donations 

  # .donors => to get a collection of all donors associated with this org

  # .donors<< add a new donor to the collection for this org

  # one to many relationship
  # we are going to get this relationship back as a collection(array)


  # .donations => return all the donations associted to the org that it was called on 

  # .donations << donation

  def return_donations_by_date(date)
    self.donations.where(date: date)
  end

  def sum_of_donations 
    self.donations.sum(:amount)
  end

  def print_donors_by_name 
    self.donors.each do |donor|
      puts donor.name
    end
  end
end 

# org.donations.create(amount: 900, date: "11/08/22", completed: false)

# find_by_attr(value)
# find_by(attr: value)