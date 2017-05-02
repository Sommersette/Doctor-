require 'sinatra'
require 'sinatra/reloader'
require './lib/doctor'
require 'pry'
require 'pg'

also_reload('lib/**/*.rb')

DB = PG.connect({:dbname => 'clinic_database'})

get('/') do
  erb(:index)
end
