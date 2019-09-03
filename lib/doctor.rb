class Doctor

  attr_reader :name, :appointment, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new( self, patient, date)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    Appointment.all.map do |appointment|
      appointment.patients
    end
  end

end