#Write a Ruby program to remove the first and last two characters from a specified string.

class RemoveFirstandLastChar

    def initialize(str)
        @str = str
    end    

     #Function to remove first and last two characters from string
     def remove_first_last                                     
        return @str.slice(2..@str.length-3)
    end
end    


puts "Enter string : "     
str = gets.chomp
strLength = str.length
removeFirstandLastChar = RemoveFirstandLastChar.new(str)
if(strLength<=4)
    puts "String length is less than 4. Enter another string"
else    
    puts "After removing the first and last two characters from string:" 
    # Calling the method    
    result = removeFirstandLastChar.remove_first_last
    puts result
end  
