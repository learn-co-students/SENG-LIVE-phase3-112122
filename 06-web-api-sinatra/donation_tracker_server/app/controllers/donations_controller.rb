class DonationsControllers < ApplicationController

#   crud api - that will allow to receive and respond to crete, read, update and delete types of requests 

# READ - use 'get' http verb 

# read all resources 

# follow REST convention 

get '/donations' do 

  # we want to retreive all donations from the db 
  donations = Donation.all

  # we want to send out a JSON response

  donations.to_json # convert our ruby code to JSON and send it as a response

  # Donation.all.to_json
end 

# read a single resource and send that as a response 

get '/donations/:id' do # a dynamic route bc that id is going to change per request 
  

  # how tdo we access the id value => through params
  # params is an empty hash we get when connecting with Sinatra base
  # NOTE: params is only accessible inside of the controller, cannot access it in the model 
  # params get populated in 2 ways with key/value pairs
    # first: using dymanic routes 

  donation = Donation.find(params[:id])
  donation.to_json
end


# CREATE - our goal is we're going to receive some body data from the client side, and we ant to create a new record in the db and then return the object as JSON

post '/donations' do
  # how do I access the body of this request 
  # second way of populating our params hash, is receiving body 
    # params => {"amount"=>90000, "date"=>"122022", "completed"=>false}
  
  # donation = Donation.create(amount: params[:amount], date: params[:date])
  donation = Donation.create(params)
  donation.organization_id = Organization.last.id
  donation.donor = current_user
  donation.to_json
end

# UPDATE AN EXISTING DONATION 

patch '/donations/:id' do 

  # 1. Need to find the resource using the id in the path 
    donation = Donation.find(params[:id])

  # 2. Need to update the resource 
  # we also need to access that data in the params
  donation.update(amount: params[:amount], organization_id: params[:organization])

  # 3. Send back a JSON response
  donation.to_json
end 

delete '/donations/:id' do 
  donation = Donation.find(params[:id])
  donation.destroy 
end 

end 



# REACT


# - we're going to use the fetch method 

# fetch('http://localhost:9292/donations')
# .then()
# .then(resp => {
#   hey this is what i want to do with the response from the api
# })

# fetch('http://localhost:9292/donations/${donationId}')
# .then()
# .then(resp => {
#   hey this is what i want to do with the response from the api
# })

# fetch('http://localhost:9292/donations/${donationId}', {
#   method: 'delete'
# })