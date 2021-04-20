class Restaurant
  # DATA / STATE
  def initialize(name, capacity, city, category) # ususally all the vinstance varibales are in the initialize method
    @name = name
    @capacity = capacity
    @city = city
    @category = category
    @clients = []
  end
  # BEHAVIOUR / METHODS
  attr_reader :name, :city # need this line for accesing regina.name and regina.city fron line 19
  attr_writer :capacity

  def open?
    Time.now.hour >= 16 && Time.now.hour <= 21 # returns true or false... without returns and elses and being redundant
  end

  def book(client_name)
    @clients << client_name # adds a client name into an array of clients
  end

end

# OTHER FILE
#require_relative "restaurant"

regina = Restaurant.new("Regina", 100, "Tel Aviv", "Italian")
p regina # prints the instance of class Restaurant
p "#{regina.name} is in #{regina.city} "

p "doing renovation in regina"
regina.capacity += 20
p "#{regina.capacity} can hold Regina"

p regina.open? ? "open" : "not open"
