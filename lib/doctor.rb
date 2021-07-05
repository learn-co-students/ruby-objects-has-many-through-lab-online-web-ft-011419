class Doctor
  @@all = []
  attr_accessor :name, :appointment

  def initialize(name)
    @name = name
    @appointments = appointments
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointment
    appointment
  end

  def appointments
    Appointment.all.select {|appointment| self == appointment.doctor}
  end

  def patients
    appointments.collect {|appointment| appointment.patient}
  end
end
