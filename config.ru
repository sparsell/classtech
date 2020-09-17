require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

#mount other controller with key work 'use'

#send PATCH and DELETE requests (sinatra middleware)
use Rack::MethodOverride
run ApplicationController


run ApplicationController
