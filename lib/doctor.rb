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
    new_appointment = Appointment.new(date, self, patient)
  end

  def patients
    Appointment.all.map {|a| a.patient}
  end

end
