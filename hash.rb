require 'digest/sha1'

value2 = ARGV[0]
value3 = ARGV[2]
value = ARGV[1]
value = value + value2
hash = Digest::SHA512.hexdigest(value)
result = hash[4,10] + value3
puts result
