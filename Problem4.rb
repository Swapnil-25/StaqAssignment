=begin
    Write a Ruby program to check whether a value exists in an array.
    Sample Output:
    Original array:
    ["Red", "Green", "Blue", "White"]
    Check if 'Green' in color array!
    true
    Check if 'Pink' in color array!
    false
=end

class ValueInArray                                       # class
    
    def checkValueinArray(array,value)                   # Method to check whether a value exists in an array
        ans = false
        array.each do |ele|                              # Traversing each element in array to check value exists
            if(ele==value)
                ans= true
            end    
        end
        return ans                                       # Return answer
       
        # Using inbuilt function
        # puts array.include?(value)
    end  
    
end    

valueInArrayObj = ValueInArray.new                      # Creating object of class

array = ["Red", "Green", "Blue", "White"]               # Given Array
puts "Enter Value to check in array: "
value = gets.chomp                                      # Getting input from user to check value in array
ans = valueInArrayObj.checkValueinArray(array,value)
puts ans                                               # Printing answer    
