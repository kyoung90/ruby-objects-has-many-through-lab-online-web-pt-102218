class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end 
  
  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end 
  
  def patients
    Appointment.all.select{|appointment| appointment.patient.doctor == self}
    # Patient.all.select{|patient| patient.doctor == self}
  end 

end 