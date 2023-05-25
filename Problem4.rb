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

array = ["Red", "Green", "Blue", "White"]        # Given Array
value = gets.chomp                               # Getting input from user
ans = false
array.each do |ele|                              # Traversing each element in array
    if(ele==value)
        ans=true
    end    
end
puts ans                                         # Printing answer    

# Using inbuilt function
# puts array.include?("Green")
# puts array.include?("Pink")        
