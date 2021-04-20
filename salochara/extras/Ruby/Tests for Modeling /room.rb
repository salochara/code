require_relative "patient"

class Room
  class CapacityReachedError < Exception; end

  attr_accessor :id
  def initialize(attributes = {})
    @capacity = attributes[:capacity]
    @patients = attributes[:patients]|| []
  end

  def add_patient(patient)
    if full?
      fail CapacityReachedError, "Room is full"
    else
      @patients << patient
      patient.room = self
    end
  end

  def full?
    @capacity == @patients.length
  end

end


room_1 = Room.new(capacity: 2)

john = Patient.new(name: "John", cured: true)
room_1.add_patient(john)

george = Patient.new(name: "George", blood_type: "A")
room_1.add_patient(george)

# ringo = Patient.new(name: "Ringo", blood_type: "B")
# room_1.add_patient(ringo)
