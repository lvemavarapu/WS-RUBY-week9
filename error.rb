#method definition
# def divide (num1, num2)
# num1/num2
# end

# divide(10,2)


#Error handling, exceptions
def divide(num1, num2)
    num1/num2
end
    begin 
 puts " enter a number" 
 num1 = gets.chomp.to_i
 puts " enter a number" 
 num2 = gets.chomp.to_i
 puts num1/num2
  
   
rescue ZeroDivisionError
    puts "denominator cannot be 0!"
retry

end


