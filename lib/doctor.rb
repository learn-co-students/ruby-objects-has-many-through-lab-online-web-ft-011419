class Doctor
  attr_accessor :name, :appointments, :patient
  @@all = []
  def initialize(name)
    @name = name
    @appointments = []# a doctor has many patients through appointments
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
      new_apt = Appointment.new(date, patient, self)
    #creates new appt which should know that it belongs to the doctor
  end

  def appointments
    Appointment.all.select do |apt|
      apt.doctor == self
    end #iterate and find the ones that belong to this doctor
  end

  def patients
    appointments.map do |apt|
      apt.patient
      end
  end

end
