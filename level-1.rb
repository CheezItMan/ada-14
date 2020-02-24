puts "Welcome to the Ada State Fair Expense Tracker"
puts "Please provide some information: "
puts "Please provide some information: "

puts "Please input the following for party #1"
print "Number of tickets => " 

party_1_tickets = gets.chomp.to_i

puts
print "How many servings of cotton candy did they order? => " 
party_1_candy = gets.chomp.to_i

puts 
puts "How many orders of curly fries?"
print "  Small? => "
party_1_small_fries = gets.chomp.to_i
print "  Large? => "
party_1_large_fries = gets.chomp.to_i

puts 
puts "------------------"
puts

puts "Please input the following for party #2"
print "Number of tickets => " 

party_2_tickets = gets.chomp.to_i

puts
print "How many servings of cotton candy did they order? => " 
party_2_candy = gets.chomp.to_i

puts 
puts "How many orders of curly fries?"
print "  Small? => "
party_2_small_fries = gets.chomp.to_i
print "  Large? => "
party_2_large_fries = gets.chomp.to_i

puts 
puts "------------------"
puts

puts "Please input the following for party #3"
print "Number of tickets => " 

party_3_tickets = gets.chomp.to_i

puts
print "How many servings of cotton candy did they order? => " 
party_3_candy = gets.chomp.to_i

puts 
puts "How many orders of curly fries?"
print "  Small? => "
party_3_small_fries = gets.chomp.to_i
print "  Large? => "
party_3_large_fries = gets.chomp.to_i

puts
puts "------------------"
puts

puts "Summary:"

party_1_tickets_total = party_1_tickets % 4 * 35 + party_1_tickets / 4 * 112.0
party_2_tickets_total = party_2_tickets % 4 * 35 + party_2_tickets / 4 * 112.0
party_3_tickets_total = party_3_tickets % 4 * 35 + party_3_tickets / 4 * 112.0

party_1_candy_total = party_1_candy * 1.25
party_2_candy_total = party_2_candy * 1.25
party_3_candy_total = party_3_candy * 1.25

party_1_small_fries_total = party_1_small_fries * 2.50
party_2_small_fries_total = party_2_small_fries * 2.50
party_3_small_fries_total = party_3_small_fries * 2.50

party_1_large_fries_total = party_1_large_fries * 4.0
party_2_large_fries_total = party_2_large_fries * 4.0
party_3_large_fries_total = party_3_large_fries * 4.0

part_1_food_total = party_1_candy_total + party_1_small_fries_total + party_1_large_fries_total
party_1_total = party_1_tickets_total + part_1_food_total
puts "Party 1 spent a total of $#{party_1_tickets_total} on tickets and $#{part_1_food_total} on food for a total of #{party_1_total}"

part_2_food_total = party_2_candy_total + party_2_small_fries_total + party_2_large_fries_total
party_2_total = party_2_tickets_total + part_2_food_total
puts "Party 2 spent a total of $#{party_2_tickets_total} on tickets and $#{part_2_food_total} on food for a total of #{party_2_total}"

part_3_food_total = party_3_candy_total + party_3_small_fries_total + party_3_large_fries_total
party_3_total = party_3_tickets_total + part_3_food_total
puts "Party 3 spent a total of $#{party_3_tickets_total} on tickets and $#{part_3_food_total} on food for a total of #{party_3_total}"

puts

total_spent = party_1_total + party_2_total + party_3_total
puts "In this session the fair earned #{total_spent}"
puts "The total spent on concessions is #{part_1_food_total + part_2_food_total + part_3_food_total}"

if party_1_total > party_2_total && party_1_total > party_3_total
  puts "Party 1 spent the most money for a total of $#{party_1_total}"
elsif party_2_total > party_1_total && party_2_total > party_3_total
  puts "Party 2 spent the most money for a total of $#{party_2_total}"
else
  puts "Party 3 spent the most money for a total of $#{party_3_total}"
end
