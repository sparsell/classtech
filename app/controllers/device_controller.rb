class DeviceController < ApplicationController

    get '/devices' do
        @devices = Device.all 
        erb :'devices/index'
    end
end