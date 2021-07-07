require "pry"

class Doctor 
  
  attr_accessor :name
 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 

def new_appointment(patient, date)
  appointment = Appointment.new(self, patient, date)
  
end 

def appointments
  Appointment.all.select{|appointment| appointment.doctor == self}
#binding.pry 
end 

def patients 
  appointments.collect {|appointment| appointment.patient}
end 

end