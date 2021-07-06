class Patient 
  @@all = []
  def self.all
    @@all 
  end 
  def initialize(name)
    @name = name 
    @@all << self 
  end
  attr_accessor :name , :appointment , :doctor
  def appointments 
    final = []
    Appointment.all.each do |x| 
      if x.patient == self 
        final << x 
      end
      end
      return final
    end 
    def new_appointment(doctor, date)
      Appointment.new(self, doctor, date )
    end
    def doctors 
      Appointment.all.map do |x| 
        x.doctor 
      end
    end 
  end
  
  
  