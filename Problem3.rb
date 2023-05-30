=begin
    Write a Ruby program to remove the first and last two characters from a specified string.
    Sample Output:
    JavaScript -> vaScri
    Python -> th

=end

class RemoveFirstandLastChar
     def removeFirstLast(str,strLength)                                       #Function to remove first and last two characters from string
        return str.slice(2..strLength)
    end
end    

RemoveFirstandLastCharObj = RemoveFirstandLastChar.new                          # Creating object of class
puts "Enter string : "           
str = gets.chomp                                                                # Getting input from user
strLength = str.length
if(strLength<=4)
    puts "String length is less than 4. Enter another string"
else    
    puts "After removing the first and last two characters from string:"     
    result = RemoveFirstandLastCharObj.removeFirstLast(str,strLength-3)       # Calling Method
    puts result                                                                 # Printing result
end  
