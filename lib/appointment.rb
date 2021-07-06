class Appointment

  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(doctor="", patient="", date="")
    @date = date
    @patient = patient
    @doctor = doctor

    @@all << self
  end

  def self.all
    @@all
  end

  def patients
    self.patient
  end

  def doctors
    self.doctor
  end
end