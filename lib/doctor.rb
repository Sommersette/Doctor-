class Doctor

  attr_accessor(:name)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
  end

  define_singleton_method(:all) do
    returned_doctor = DB.exec("SELECT * FROM doctors;")
    doctors = []
      returned_doctor.each() do |doctor|
        name = doctor.fetch.("name")
        doctor.push(Doctor.new({:name => name}))
      end
    doctors
  end

  define_method(:==) do |anoter_doctor|
    self.name().==(another_doctor.name())

  end
end
