require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end


use Rack::MethodOverride #send PATCH and DELETE requests (sinatra middleware)
use ChildController
use GradeController
use UserController
use DeviceController
use RuleController
run ApplicationController

