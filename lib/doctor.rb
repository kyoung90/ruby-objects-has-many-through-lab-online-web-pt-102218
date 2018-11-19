class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @patients = []
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(patient, date)
    @patients << patient
    appointment = Appointment.new(patient, self, date)
  end 
  
  def appointments
    @appointments
  end 
  
  def patients
    @patients
  end 

end 