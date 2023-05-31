#Write a Ruby program to check whether a value exists in an array.

class CheckValueInArray

    def initialize(array)
        @array = array
    end 

    # Method to check whether a value exists in an array
    def check_value_in_array(value)                   
        ans = false

        # Traversing each element in array to check value exists
        @array.each do |element|
            if(element==value)
                ans= true
            end    
        end
        return ans
       
        # Using inbuilt function
        # puts array.include?(value)
    end  
    
end    

array = ["Red", "Green", "Blue", "White"]
# Creating object of class
valueInArrayObj = CheckValueInArray.new(array)
# Getting input from user to check value in array
puts "Enter Value to check in array: "
value = gets.chomp
ans = valueInArrayObj.check_value_in_array(value)
puts ans   
