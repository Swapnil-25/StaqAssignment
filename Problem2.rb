=begin
    Given the following data structures, write a program that copies the information 
    from the array into the empty hash that applies to the correct person.
=end
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

i=0
contacts.each do |key,value|                                   # Traversing and adding values in hash
    # puts "#{key},#{value}"
    contacts[key][:email] = contact_data[i][0]
    contacts[key][:address] = contact_data[i][1]
    contacts[key][:phone] = contact_data[i][2]
    i+=1
end 
puts contacts                             # Printing output