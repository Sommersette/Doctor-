require "patient"
require "rspec"
require "pry"
require "pg"
require ("spec_helper")

describe(Patient) do

    describe(".all") do
      it("is empty at first")do
      expect(Patient.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a patient to the array of patients") do
      patient = Patient.new({:name => "Dorf",:doctor_id => 0, :birthdate => '2017-05-01 00:00:00'})
      patient.save()
      expect(Patient.all()).to(eq([patient]))
    end
  end









end
