dishes = ['carbonara','pizza','falafel','hummus']

# FOR Loop
i = 1
for dish in dishes do
  #puts "#{i}.#{dish} "
  i +=1
end

# Instead of FOR loop... use each in Ruby
# Each loop
dishes.each do |dish|
  #puts dish
end

dishes.each_with_index do |dish, index|
  #puts "#{index + 1}. #{dish}"
end



dishes.each do |dish|
  puts dish.upcase
end
