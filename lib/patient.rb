class Patient
  attr_accessor(:name, :birthdate, :id, :doctor_id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @birthdate = attributes.fetch(:birthdate)
    @id = attributes[:id]
    @doctor_id = attributes[:doctor_id]
  end

  define_singleton_method(:all) do
    returned_patient = DB.exec("SELECT * FROM patients;")
    patients = []
      returned_patient.each() do |patient|
        name = patient.fetch("name")
        birthdate = patient.fetch("birthdate")
        id = patient.fetch("id").to_i()
        doctor_id = patient.fetch(Patient.new({:name => name, :birthdate => birthdate, :id => id, :doctor_id => doctor_id}))
        end
      patients
    end

end
