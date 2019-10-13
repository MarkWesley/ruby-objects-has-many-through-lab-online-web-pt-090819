class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all =[]

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
  end

  def patients
    Appointment.all.select {|a| a.patient}
  end

end
