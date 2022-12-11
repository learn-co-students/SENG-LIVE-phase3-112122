# Intro to Sinatra

### Lecture Take Aways

- Request-response cycle
- APIs
- Active Record
- Rack
- Sinatra
- Routes
- HTTP methods
- Params
- Strong params
- Dynamic Routing

### Lecture Objectives

- Explain how the web works, including request-response cycle
- Understand what an API is and its role in the way the web works
- Explain how Active Record, Rack, and Sinatra tie together
- Demonstrate the full request-response cycle using a Sinatra GET route and Postman

### Lecture Deliverables

- Implement Sinatra with the existing application domain 
- Create a Donations Controller
- Define a route that will return all donations in JSON format upon a request
- Test request and response results using Postman
- Define a route that will return one instance of donations in JSON format upon a request

### Internet Review

- What the client vs server?
- Explain the request/response cycle:
- What is HTTP?
- When a request is made, what determines the path of the request?
- Define the HTTP Verbs used to perform CRUD actions:
- What is the difference between the following status codes: 200, 300, 400, 500
- What is an API?

# Sinatra

### What is Sinatra? 

- A DSL used for creating simple web applications
- A framework implemented in Ruby
- Uses Rack under the hood
- A great introduction to Ruby on Rails

### How to create a Sinatra application?

- Install the Sinatra gem into application and manually setup application with necessary files and configurations  
- Or even better use the corneal gem to generate a Sinatra application, [Corneal Gem](https://github.com/thebrianemory/corneal)

### Routing in Sinatra

Create a route for the following behaviors based on the REST Conventions:
1. Read all donations
2. Read a single donation
3. Create a new donation
4. Update an existing donation
5. Delete an existing donation 