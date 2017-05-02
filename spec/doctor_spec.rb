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
      doctor = Doctor.new({:name => "Bob", :id => nil, :specialty => "hands"})
      doctor.save()
      expect(Doctor.all()).to(eq([doctor]))
    end
  end


  describe("#==") do
    it("compares two doctors") do
      doctor1 = Doctor.new({:name => "learn SQL", :id => nil, :specialty => "hands"})
      doctor2 = Doctor.new({:name => "learn SQL", :id => nil, :specialty => "hands"})
      expect(doctor1).to(eq(doctor2))
    end
  end



end
