require 'pry'
class Doctor
  
  attr_accessor :name, :appointments, :patients
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
    @patients = []
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appt = Appointment.new(date, patient, self)
    @appointments << appt
    @patients << patient
    #binding.pry
    appt
  end
  
  def patients
    @patients
  end
end