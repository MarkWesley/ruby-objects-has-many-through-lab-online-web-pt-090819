class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date = "Monday, August 1st", patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  # def doctor
  #
  # end
  # #
  # def patient
  #   self.patient
  # end

end
