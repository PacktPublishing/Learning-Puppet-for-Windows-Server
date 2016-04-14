module Puppet::Parser::Functions
  newfunction(
    :myfirstfunction,
    :type => :rvalue, 
    :doc => "Testing the first function. ") do |args|
    value = args[0]
    result = "Hello World Function: " + value
    return result
  end
end
