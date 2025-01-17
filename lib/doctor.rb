require 'pry'
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

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def patients
    # binding.pry
    appointments.map {|appointment| appointment.patient}
  end


end
