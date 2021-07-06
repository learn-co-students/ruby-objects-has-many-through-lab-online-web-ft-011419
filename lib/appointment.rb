class Appointment
  @@all = []
  def self.all
    @@all 
  end 
  def initialize(patient, doctor, date)
    @doctor = doctor 
    @patient = patient
    @date = date 
    @@all << self 
  end
  attr_accessor :doctor, :patient, :date 
  def patients 
    self.patient
  end
  def doctors 
    self.doctor
  end
end
