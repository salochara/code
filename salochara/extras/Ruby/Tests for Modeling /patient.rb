class Patient

  attr_accessor :room , :id

  def initialize(attributes = {})
    @name = attributes[:name]
    @blood_type = attributes[:blood_type]
    @cured = attributes[:cured] || false
  end

  def cured
    @cured = true
  end

end


# john = Patient.new(name: "John", cured: true)
# p john
# george = Patient.new(name: "george", cured: true,blood_type: "O+")
# p george
