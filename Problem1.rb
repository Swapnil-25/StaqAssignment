=begin
Suppose you have a hash h = {a:1, b:2, c:3, d:4}
1. Get the value of key `:b`.
2. Add to this hash the key:value pair `{e:5}`
3. Remove all key:value pairs whose value is less than 3.5
=end

hash = { a:1, b:2, c:3, d:4 }                  # Given Hash
# 1. Get value of key `:b`
valueOfKeyB = hash[:b]
puts "Value of key ':b' : #{valueOfKeyB}";     # Printing value of key ':b'

# 2. Add to this hash the key:value pair `{e:5}`
puts "Hash after adding key:value pair `{e:5}"
hash[:e]=5;                        
hash.each do |key,value|                       # Printing hash elements 
    puts "key : #{key}  Value : #{value}"
end

# 3. Remove all key:value pairs whose value is less than 3.5
puts "Hash after Removing all key:value pairs whose value is less than 3.5"
hash.delete_if{|key,value| value<3.5}
hash.each do |key,value|                       # Printing hash elements 
    puts "key : #{key}  Value : #{value}"
end