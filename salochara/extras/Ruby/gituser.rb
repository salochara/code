require 'json'
require 'open-uri'

puts "What's your USERNAME ON GitHub?"
user = gets.chomp

url = "https://api.github.com/users/#{user}"

json_string = open(url).read

hash = JSON.parse(json_string)
puts "Hello #{hash['name']}, you have #{hash["public_repos"]} public repositories"


