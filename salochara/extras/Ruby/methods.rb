require 'Date' # for importing libraries

puts Date.today + 1

def greet(name)
  # name is parameter
  return "Hi #{name}! How was your day? "
end

tmp = greet('salo') # salo is the argument
puts tmp

puts greet('salo')

text = "hii"
text.upcase! # ! lo que hace es modificar la variable original.. no la copia.(pointers en C)
