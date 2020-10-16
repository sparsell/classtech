class DeviceController < ApplicationController

    ### No plan to have a view of the devices in the app - do I need to delete the controller then and all the views? (best practice?)
    get '/devices' do
        @devices = Device.all 
        erb :'devices/index'
    end
end