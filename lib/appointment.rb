class Appointment
  
  attr_accessor :date, :patient, :doctor
  
  @@all = []

  def initialize(date, patient, doctor) #string like "Monday, August 1st"
  #the appointment should be saved in the @@all array.
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
    
  def self.all
    @@all
  end
  
end