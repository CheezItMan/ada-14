require "pry"

visits = []
puts "How many visitors to the fair will there be?"
num_visitors = -1
while num_visitors <= 0
  num_visitors = gets.chomp.to_i
  if num_visitors <= 0
    puts "There must be a positive number of visitors"
  end
end

num_visitors.times do |index|
  party = index + 1
  puts "Please input the following for party # #{party}"
  num_tickets = -1
  while num_tickets <= 0
    print "Number of tickets => "
    num_tickets = gets.chomp.to_i
    if num_tickets <= 0
      puts "The number of tickets should be a positive integer."
    end
  end

  cotton_candy = -1
  while cotton_candy < 0
    print "How many servings of cotton candy did they order? => "
    cotton_candy = gets.chomp.to_i
    if cotton_candy < 0
      puts "The number of cotton candy orders should a positive or zero integer."
    end
  end

  puts "How many orders of curly fries?"

  small_fries = -1
  while small_fries < 0
    print "  Small? => "
    small_fries = gets.chomp
    
    if small_fries == small_fries.to_i.to_s
      small_fries = small_fries.to_i
    else
      small_fries = -1
    end

    if small_fries < 0
      puts "The number of small fry  orders should a positive or zero integer."
    end
  end

  large_fries = -1
  while large_fries < 0
    print "  Large? => "
    large_fries = gets.chomp
    
    if large_fries == large_fries.to_i.to_s
      large_fries = large_fries.to_i
    else
      large_fries = -1
    end
    
    if large_fries < 0
      binding.pry
      puts "The number of large fry orders should a positive or zero integer."
    end
  end

  ticket_total = num_tickets % 4 * 35.0 + num_tickets / 4 * 112.0
  concession_total = cotton_candy * 1.25 + large_fries * 4 + small_fries * 2.50
  submission = {
    party: party,
    tickets: num_tickets,
    ticket_total: ticket_total,
    cotton_candy_orders: cotton_candy,
    cotton_candy_total: cotton_candy * 1.25,
    large_fry_orders: large_fries,
    large_fry_total: large_fries * 4,
    small_fry_orders: small_fries,
    small_fry_toal: small_fries * 2.50,
    concession_total:  concession_total,
    total: ticket_total + concession_total
  }
  visits << submission
end


puts "---"
puts 
puts "Summary"
visits.each do |visit|
  puts "Party #{visit[:party]} spent a total of $#{visit[:ticket_total]} on tickets \
  and $#{visit[:concession_total]} on food for a total of #{visit[:total]}"
end

sum = visits.reduce(0) do |sum, visit|
  sum + visit[:total]
end

puts "In this session the fair earned $#{sum}"
total_concessions = visits.reduce(0) do |sum, visit|
  sum + visit[:concession_total]
end
puts "The total spent on concessions is $#{total_concessions}"

max_party = visits.max_by do |visit|
  visit[:total]
end
puts "Party #{max_party[:party]} spent the most money for a total of $#{max_party[:total]}"

