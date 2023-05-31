=begin
Suppose you have a hash h = {a:1, b:2, c:3, d:4}
1. Get the value of key `:b`.
2. Add to this hash the key:value pair `{e:5}`
3. Remove all key:value pairs whose value is less than 3.5
=end

class HashProblem
    def initialize(hash)
        @hash = hash
    end   
    
    # Method to print value of key
    def print_value_of_key(key)
        puts "Value of key '#{key}' is  #{@hash[key]}";
    end
    
    # Method to add value in hash 
    def add_value_to_hash(key,value)
        @hash[key]=value;      
    end
    
    # Method to delete elements whose value is less than 3.5
    def delete_pairs_less_than(value)
        @hash.delete_if{|key,val| val<value}
    end    

    def print_hash
        @hash.each do |key,value|
            puts "Key: #{key}  value: #{value}"
        end    
    end    
end    

hash = { a:1, b:2, c:3, d:4 }
hashProblem=HashProblem.new(hash)

# 1. Get value of key 
hashProblem.print_value_of_key(:b)                   

# 2. Add to this hash the key:value pair `{e:5}`
hashProblem.add_value_to_hash(:e,5)
puts "Hash after adding key:value pair `{e:5}` :"
hashProblem.print_hash

# 3. Remove all key:value pairs whose value is less than 3.5
hashProblem.delete_pairs_less_than(3.5)
puts "Hash after deleting elements whose value is less than 3.5"
hashProblem.print_hash
