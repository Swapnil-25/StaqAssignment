=begin
    Given the following data structures, write a program that copies the information 
    from the array into the empty hash that applies to the correct person.
=end 
class ArrayToHash                                                      # class
    
    def convertArrayToHash(contact_data,contacts)                      # Method to convert array to hash
        i=0
        contacts.each do |key,value|                                   # adding values in hash
            contacts[key][:email] = contact_data[i][0]
            contacts[key][:address] = contact_data[i][1]
            contacts[key][:phone] = contact_data[i][2]
            i+=1
        end 
    end
    
    def printHash(contacts)                                           # Method to print hash
        puts contacts
        # contacts.each do |key,value|
        #     puts "Key: #{key}  value: #{value}"
        # end    
    end   
end    

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],             # Given array
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

arrayToHashObj=ArrayToHash.new                                      # Creating Object
arrayToHashObj.convertArrayToHash(contact_data,contacts)            # Method calling
arrayToHashObj.printHash(contacts)                                  # Printing Hash
