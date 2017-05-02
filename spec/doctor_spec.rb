require "doctor"
require "rspec"
require "pry"
require "pg"
require ('spec_helper')

# DB = PG.connect({:dbname => 'clinic_database'})
describe(Doctor) do

  describe(".all") do
    it("starts off without any doctors") do
      expect(Doctor.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("add a doctor to the array of saved doctors") do
      doctor = Doctor.new({:name => "Bob", :specialty => "hands"})
      doctor.save()
      expect(Doctor.all()).to(eq([doctor]))
    end
  end

  describe("#name") do
    it("lets you see the name") do
      doctor = Doctor.new({:name => "learn SQL", :specialty => "hands"})
      expect(doctor.name()).to(eq("learn SQL"))
    end
  end

  describe("#id") do
    it("lets you read the doctor ID") do
      doctor = Doctor.new({:name => "learn SQL", :specialty => "hands"})
      expect(doctor.id()).to(eq(nil))
    end
  end

  describe("#specialty") do
    it("lets you read the doctor's specialty") do
      doctor = Doctor.new({:name => "learn SQL", :id => nil, :specialty => "hands"})
      expect(doctor.specialty()).to(eq("hands"))
    end
  end

  describe("#==") do
    it("compares two doctors") do
      doctor1 = Doctor.new({:name => "learn SQL", :id => nil, :specialty => "hands"})
      doctor2 = Doctor.new({:name => "learn SQL", :id => nil, :specialty => "hands"})
      expect(doctor1).to(eq(doctor2))
    end
  end

  describe("#find") do
    it("allow doctors to search for all patients in their care") do
      patient = Patient.new({:name => "Dorf",:doc_id => 9, :birthdate => '2017-05-01'})
      expect(patient.find).to(eq(9))
    end
  end

  define_method(:patients) do
    it('returns an array of all patients of assigned to that doctor') do
      doctor = Doctor.new({:name => name, :id => id, :specialty => specialty})
      doctor.save()
      test_patient1 = Patient.new({:name => "Worf",:doc_id => doctor.id, :birthdate => '2017-05-01'})
      test_patient1.save()
      test_patient1 = Patient.new({:name => "Dorf",:doc_id => doctor.id, :birthdate => '2017-08-01'})
      test_patient1.save()
      expect(doctor.patients(doctor.id())).to(eq([test_patient1, test_patient2]))
    end


  end

end
