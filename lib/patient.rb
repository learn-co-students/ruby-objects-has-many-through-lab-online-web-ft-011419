class Patient

   attr_accessor :name, :doctor, :date, :appointment
  @@all = []

   def initialize(name)
    @name = name
    @@all << self
  end

   def self.all
    @@all
  end

   def new_appointment(doctor, date)
      Appointment.new(date, self, doctor)#creates new appt which should know that it belongs to the patient
  end

   def appointments
    Appointment.all.select do |apt|
      apt.patient == self#iterates returns appt that belong to patient
  end
end

   def doctors
    appointments.map do |apt|
      apt.doctor
    end# iterates and collects doctor that belongs to each appt
  end
end
