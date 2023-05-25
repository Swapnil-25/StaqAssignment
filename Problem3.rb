=begin
    Write a Ruby program to remove the first and last two characters from a specified string.
    Sample Output:
    JavaScript -> vaScri
    Python -> th

=end

def remove_first_last(str,strLength)       #Function to remove first and last two characters from string
    return str.slice(2..strLength)
end

puts "Enter string : "           
str = gets.chomp                           # Getting input from user
strLength = str.length
if(strLength<=4)
    puts "String length is less than 4."
else    
    puts "After removing the first and last two characters from string."     
    result = remove_first_last(str,strLength-3)             # Calling function
    puts result                                             # Printing result
end  
