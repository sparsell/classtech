require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

#send PATCH and DELETE requests (sinatra middleware)
use Rack::MethodOverride
use ChildController
use GradeController
use UserController
use DeviceController
run ApplicationController

