class OrganizationsController < ApplicationController


  # READ: all organizations 

  # following REST pattern

  get '/organizations' do 
    # I need to grab all organizations
    organizations = Organization.all
    organizations.to_json # this is going to take our Ruby objects and format it into JSON and then we send that out as our response

    # Organization.all.to_json
  end

  # READ: to read one specific organization 

  get '/organizations/:id' do # :id is a placeholder for the actual id value
    # params[:id] => 1
    organization = Organization.find(params[:id])
    # organization = Organization.find_by_id(params[:id])
    organization.to_json
  end

  # Create endpoint: where we receive data from the client and then generate a new organization record 

  post '/organizations' do 
    # we want to a new organization, we want to create with the data that we received 
    # params
    # Organization.create(name: params[:name])
    organization = Organization.create(params)
    organization.donors << Donor.first
    organization.to_json
  end

  # I want to update a SPECIFIC organization 

 patch "/organizations/:id" do 
  # how do I get teh value of :id 
  org = Organization.find(params[:id])
  org.update(name: params[:name])
  org.to_json
 end

 # I want to delete a specific organization 

 delete "/organizations/:id" do 
  org = Organization.find(params[:id])
  org.destroy
 end


end