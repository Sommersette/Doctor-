class Doctor

  attr_accessor(:name, :id, :specialty)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes[:id]
    @specialty = attributes.fetch(:specialty)
  end

  define_singleton_method(:all) do
    returned_doctor = DB.exec("SELECT * FROM doctors;")
    doctors = []
      returned_doctor.each() do |doctor|
        name = doctor.fetch("name")
        id = doctor.fetch("id").to_i()
        specialty = doctor.fetch("specialty")
        doctors.push(Doctor.new({:name => name, :id => id, :specialty => specialty}))
      end
      doctors
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO doctors (name, specialty) VALUES ('#{@name}', '#{@specialty}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

  define_method(:==) do |another_doctor|
    self.name().==(another_doctor.name())

  end
end
