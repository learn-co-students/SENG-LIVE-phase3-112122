class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/hello_world' do 
    "hey you made it to Sinatra!"
  end

  private

  def current_user 
    Donor.first
  end
end


# we want to create a respectve controller for every model 


# endpoints how to:

# HTTP verb - this will tell the request what its meant to do 
# GET, POST, PATCH/PUT, DELETE 

# path - this is our choice waht we want to define it as, but we can use RESTful routing to follow industry standards 

# block - where we define the response 