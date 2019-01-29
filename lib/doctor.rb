require 'pry'

class Doctor

    attr_accessor :name

  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |d| d.doctor == self
    end
  end

  def patients
    appointments.collect do |p|
p.patient

    end
  end
#wow
















  def self.all
    @@all
  end

end
