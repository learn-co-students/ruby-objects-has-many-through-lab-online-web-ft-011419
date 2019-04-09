class Patient 
  attr_accessor :name, :doctor, :appointment
  @@all = [] 
  
  def initialize(name)
    @doctor = doctor
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
 def new_appointment(date, doctor)
  appointment = Appointment.new(date, self, doctor)
  
end 

def appointments
  Appointment.all.select{|appointment| appointment.patient == self}
#binding.pry 
end

def doctors
  #binding.pry
  appointments.collect {|appointment| appointment.doctor}
end

  
end 