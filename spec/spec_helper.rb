require("rspec")
require("pg")
require("patient")
require("doctor")


DB = PG.connect({:dbname => "clinic_database"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM patients *;")
    DB.exec("DELETE FROM doctors *;")
  end
end
