require "csv"

filepath = 'beers.csv'

CSV.foreach(filepath) do |row|
  # Here, row is an array of columns
  puts "#{row[0]} | #{row[1]} | #{row[2]}"
end

# Save a CSV file

filepath = 'beers2.csv'

CSV.open(filepath, 'wb') do |csv| # wb is the mode.. it's writing in the file
  csv << ['Name', 'Appearance', 'Origin'] # passes the array into the CSV file in the filepath
  csv << ['Asahi', 'Pale Lajer', 'Japan']
end


require 'json'

filepath = 'beers.json'

string = File.read(filepath) # reads the file and stores it into string. Needs to be  JSON for the parsing

hash = JSON.parse(string) # creates a Hash out of a string...(a string that was a JSON)
beers = hash['beers']


