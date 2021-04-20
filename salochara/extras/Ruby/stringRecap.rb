dishes = ['carbonara', 'pasta', 'falafel']

# CRUD
#  Create, Read, Update, Delete

p "Size of array is: #{dishes.size}"

# Create
dishes << 'hummus'
dishes.push('pizza')
p dishes

# Read
p dishes[1]

# Update
dishes[0] = 'bolognese' # you can only update with indexes
p dishes

# Delete
dishes.delete("falafel") # this goes through all the array and comparses it to the string passes
                          # not recmmended
dishes.delete_at(2)
p dishes

# RANGES

numbers = (0..10) # includes 10
p numbers.to_a
letters = ('a'..'z').to_a
p letters.class

# FOR Loop
i = 1
for dish in dishes do
  puts "#{i}.#{dish} "
  i +=1
end

# OR
for i in (0...dishes.length) do
  puts "#{i + 1}. #{dishes[i]}"
end


















