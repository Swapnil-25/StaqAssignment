=begin
Suppose you have a hash h = {a:1, b:2, c:3, d:4}
1. Get the value of key `:b`.
2. Add to this hash the key:value pair `{e:5}`
3. Remove all key:value pairs whose value is less than 3.5
=end

class HashProblem
    
    # Method to print value of b
    def printValueOfKeyB(hash)
        puts "Value of key ':b' : #{hash[:b]}";
    end
    
    # Method to add value in hash 
    def AddingValueToHash(hash)
        hash[:e]=5;      
    end
    
    # Method to delete elements whose value is less than 3.5
    def DeleteElements(hash)
        hash.delete_if{|key,value| value<3.5}
    end    

    def printHash(hash)
        hash.each do |key,value|
            puts "Key: #{key}  value: #{value}"
        end    
    end    
end    

hash = { a:1, b:2, c:3, d:4 }                           # Given Hash
hashProblemobj=HashProblem.new                          # Creating object of class
# 1. Get value of key `:b`
hashProblemobj.printValueOfKeyB(hash)                   # Calling Method
puts ""

# 2. Add to this hash the key:value pair `{e:5}`
hashProblemobj.AddingValueToHash(hash)                  # Calling Method
puts "Hash after adding key:value pair `{e:5}` :"
hashProblemobj.printHash(hash)
# 3. Remove all key:value pairs whose value is less than 3.5
hashProblemobj.DeleteElements(hash)                                 # Calling Method
puts ""
puts "Hash after deleting elements whose value is less than 3.5"
hashProblemobj.printHash(hash)
