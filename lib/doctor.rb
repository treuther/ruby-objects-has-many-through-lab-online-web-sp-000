require "pry"

class Doctor
  
  attr_accessor :name, :date, :patient
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    # binding.pry
    #takes in an instance of the Patient class and a date
    #and creates a new appointment.
    #The appointment should know that it belongs to the doc
    Appointment.new(date, patient, self)
  end
  
  def appointments
    #iterates through all Appointments and finds those
    #belonging to this doctor
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def patients
    #iterates over that doctor's Appointments and COLLECTS
    #the patient that belongs to each Appointments
    self.appointments.collect do |appointment|
      # binding.pry
      appointment.patient
    end
  end
    
  def self.all
    @@all
  end
  
end