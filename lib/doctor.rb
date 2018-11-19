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
    appo = Appointment.all.select{|appointment| appointment.doctor == self}
    patientsList = []
    appo.each do |appointment|
      patientsList << appointment.patient
    end 
    patientsList
  end 

end 