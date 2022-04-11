require_relative './cafe'

# Main - our cafe application

puts "Welcome to!"
if ARGV.length > 0
  user_name = ARGV[0]
 else
 user_name= "User"
 end
puts "welcome to our cafe #{user_name}"

# Validate input for our cafe menu for the coder_cafe instance
def validate_input(input)
  case input[0].downcase
  when "l"
    return "latte"
  when "s"
    return "scone"
  when "t"
    return "tea"
  when "d"
    return "done"
  when "c"
    return "coffee"
  else
    puts "Invalid input. Please choose again."
    return nil
  end
end


# Create cafe instance with menu
coder_cafe = Cafe.new("Coder Cafe", {"latte" => 4.00, "tea" => 3.00, "scone" => 5.00,"coffee"=>5.00})
coder_cafe.welcome

loop do
  # 2. show the menu with prices
  coder_cafe.display_menu
  # 3. Ask the customer for their order (what they would like and quantity). Continue to ask for new items until they say they are done.
  puts "What would you like to order? Enter (d)one when you are finished."
  input = STDIN.gets.strip
  item = validate_input(input)
  # break if we're done
  break if item == "done"
  if item
    puts "How many would you like?"
    quantity = STDIN.gets.to_i
    coder_cafe.add_to_order(item,quantity) if quantity > 0
  end
end

# 4. When the order is complete, print the order and total cost.
coder_cafe.display_order