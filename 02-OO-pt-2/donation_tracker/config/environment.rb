# require is like an import statement except it loads all methods from the required file (there are no default or named exports)

# ✅ require pry so we can use binding.pry within our code
require 'pry'


# ✅ use require_relative to load up our code in the lib directory


# add a method that will reload the lib/dog.rb file so we can 
# interact with the most recent version without restarting the console
# ✅ define a `reload` method to load the lib/dog.rb file: