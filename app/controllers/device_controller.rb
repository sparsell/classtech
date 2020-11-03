class DeviceController < ApplicationController

    get '/devices' do
        @devices = Device.all 
        erb :'devices/index'
    end

    get '/devices/:id' do
        @device = Device.find(params[:id])
        @children = @device.children 

        if @children.empty?
            flash.now[:message] = "There aren't any children who have this type of device."
            erb :'devices/show'
        else
            erb :'devices/show'
        end
        
    end

end