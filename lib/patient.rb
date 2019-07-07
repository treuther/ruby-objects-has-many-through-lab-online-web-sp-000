class Patient
  
  attr_accessor :name
  @@all = []

  #patient is instantiated with a name and
  #saved in the @@all array
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    #creates a new Appointment
    #the Appointment should know that it belongs
    #to the patient
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    #iterates through the Appointments array and returns
    #Appointments that belong to the patient
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def doctors
    #iterates over the patient's Appointments and COLLECTS
    #the doctor that belongs to each Appointment
    self.appointments.collect do |appt|
      appt.doctor
    end
  end
    
  def self.all
    @@all
  end
  
end