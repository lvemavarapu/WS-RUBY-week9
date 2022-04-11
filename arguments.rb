#command line argunents
# puts "enter a name"
# name = gets.chomp
# puts "Hello #{name}"

#puts "hello #{ARGV[0]}"
def add(n1,n2)
    n1 = ARGV[0];
    n2 = ARGV[1];
    add = n1.to_i + n2.to_i
    puts add
end
puts add(1,4)
