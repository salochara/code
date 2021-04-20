class PatientRepository

  def initialize()
    @repo = []
    @next_id = 1
  end

  def add(patient)
    patient.id = @next_id
    @repo = patient
    @next_id += 1
  end

end


require_relative "patient"

repo = PatientRepository.new
john = Patient.new(name: "John", blood_type: "A")

repo.add(john)

p repo
