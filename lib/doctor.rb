class Doctor 
  @@all = []
  def self.all 
    @@all 
  end 
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  attr_accessor :name 
  def new_appointment(patient, date ) 
    Appointment.new( patient, self, date)
  end
  def appointments 
    Appointment.all.select do |a| 
      a.doctor == self
    end
  end 
  def patients
     appointments.map do |a|
      a.patients
    end
  end
end