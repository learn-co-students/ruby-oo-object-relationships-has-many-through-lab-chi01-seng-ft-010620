require_relative "appointment"

class Patient
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment (doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|n| n.patient == self}
    end

    def doctors
        appointments.map{|n| n.doctor}
    end

end