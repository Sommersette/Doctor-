require "doctor"
require "rspec"
require "pry"
require "pg"

# DB = PG.connect({:dbname => 'clinic_database'})
describe(Doctor) do

  describe(".all") do
    it("starts off without any doctors") do
      expect(Doctor.all()).to(eq([]))
    end
  end



  describe("#==") do
    it("compares two doctors") do
      doctor1 = Doctor.new({:name => "learn SQL"})
      doctor2 = Doctor.new({:name => "learn SQL"})
      expect(doctor1).to(eq(doctor2))
    end
  end



end
