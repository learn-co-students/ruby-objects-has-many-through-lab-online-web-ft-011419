class Patient
  @@all = []
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = appointments
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    @appointments << appointment
    appointment
  end

  def appointments
    Appointment.all.select {|appointment| self == appointment.patient}
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

end
