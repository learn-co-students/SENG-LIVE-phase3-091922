class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  # HTTP Verb 
  # GET, POST, PATCH, DELETE

  # 'endpoint' - we get to define what this will be and this is the endpoint the client side will include in the request 

  # inside of the do block: we write the logic for the response

  get '/welcome' do 
    "Hello world!"
  end
end