# create a password unique to each computer
module Puppet::Parser::Functions
  newfunction(:hashpass,:type => :rvalue, :doc => "Returns a SHA1.") do |args|
    require 'digest/sha1'
    value = 'justatext'
    value = value + lookupvar("fqdn")
    hash = Digest::SHA512.hexdigest(value)
    result = hash[4,10] + '.X' 
    return result
  end
end
