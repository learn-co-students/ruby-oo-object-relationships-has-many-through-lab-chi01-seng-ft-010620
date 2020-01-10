require_relative "appointment"
class Doctor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select{|n| n.doctor == self}
    end

    def patients
        self.appointments.map{|n| n.patient}
    end

end