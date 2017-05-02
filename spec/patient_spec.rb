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
      patient = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01'})
      patient.save()
      expect(Patient.all()).to(eq([patient]))
    end
  end

  describe("name") do
    it("lets you see the name") do
      patient = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01'})
      expect(patient.name()).to(eq("Dorf"))
    end
  end

  describe("#id") do
    it("lets you read the patient ID") do
      patient = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01'})
      expect(patient.id()).to(eq(nil))
    end
  end

  describe("#birthdate") do
    it("lets you read the patient's birthdate") do
      patient = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01'})
      expect(patient.birthdate()).to(eq('2017-05-01'))
    end
  end

  describe("#==") do
    it("compares two patients") do
      patient1 = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01'})
      patient2 = Patient.new({:name => "Dorf",:doc_id => 0, :birthdate => '2017-05-01'})
      expect(patient1).to(eq(patient2))
    end
  end

  describe("#doc_id") do
    it("lets you view a doctor's ID on each patient") do
      patient = Patient.new({:name => "Dorf",:doc_id => 9, :birthdate => '2017-05-01'})
      expect(patient.doc_id).to(eq(9))
    end
  end

  # describe("#find") do
  #   it("allow patients to search for all doctors in that specialty") do
  #     patient = Patient.new({:name => "Dorf",:doc_id => 9, :birthdate => '2017-05-01'}) #needs to be rewritten for specialty. Not to search for patients.
  #     expect(patient.find).to(eq(9))
  #   end
  # end


end
