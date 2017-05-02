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
      patient = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01 00:00:00'})
      patient.save()
      expect(Patient.all()).to(eq([patient]))
    end
  end


  describe("name") do
    it("lets you see the name") do
      patient = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01 00:00:00'})
      expect(patient.name()).to(eq("Dorf"))
    end
  end

  describe("#id") do
    it("lets you read the patient ID") do
      patient = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01 00:00:00'})
      expect(patient.id()).to(eq(nil))
    end
  end

  describe("#birthdate") do
    it("lets you read the patient's birthdate") do
      patient = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01 00:00:00'})
      expect(patient.id()).to(eq(nil))
    end
  end

  describe("#==") do
    it("compares two patients") do
      patient1 = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01 00:00:00'})
      patient2 = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01 00:00:00'})
      expect(patient1).to(eq(patient2))
    end
  end

  describe("#doc_id") do
    it("adds a doctors ID to the patient as foreign key.") do
      
    end
  end




end
