ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'
require './app/controllers/application_controller'


task :console do
    Pry.start
  end
