=begin
    Given the following data structures, write a program that copies the information 
    from the array into the empty hash that applies to the correct person.
=end 
class ArrayToHash
    
    def initialize(contact_data,contacts)
        @contact_data = contact_data
        @contacts = contacts
    end 

    # Method to convert array to hash
    def convert_array_to_hash
        i=0
        @contacts.each do |key,value|
            @contacts[key][:email] = @contact_data[i][0]
            @contacts[key][:address] = @contact_data[i][1]
            @contacts[key][:phone] = @contact_data[i][2]
            i+=1
        end 
    end
    
    # Method to print hash
    def print_hash
        puts @contacts
        # contacts.each do |key,value|
        #     puts "Key: #{key}  value: #{value}"
        # end    
    end   
end    

 # Given array
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Creating instance of class
arrayToHash=ArrayToHash.new(contact_data,contacts)
# Calling method to convert array to hash
arrayToHash.convert_array_to_hash
# Printing hash
arrayToHash.print_hash
