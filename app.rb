require 'sinatra'
require 'sinatra/reloader'
require './lib/doctors_office'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
