class Patient
  attr_accessor :name, :doctor
  attr_reader :appointments
  @@all = []

  def initialize(name)
    @name = name
    # @appointments = []
    # @doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select  do |a|
      a.patient == self
    end
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)


    # @appointments << appointment
    # appointment.patient = self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor

    end
  end

end
