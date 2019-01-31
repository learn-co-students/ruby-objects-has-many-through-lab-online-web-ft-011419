class Patient 
  
  @@all = []
  
  def initialize
    @@all << self 
  end  
    
    
  def self.all 
    @@all 
  end  
  
  def new_appointment(doctor,date)
    Appointment.new(doctor,self,date)
  end   
  
  def appointments 
    Appointment.select {|appointment| appointment.patient == self}
  end 
  
  def doctors 
    appointments.map(&:doctor)
  end  
  
end   