class DeviceController < ApplicationController

    get '/devices' do
        @devices = Device.all 
        # binding.pry
        erb :'devices/index'
    end

    get '/devices/:id' do
        @device = Device.find(params[:id])
        @children = @device.children  #array of all the kids with this device - from the join table
        if @children.empty?
            flash[:message] = "There aren't any children who have this type of device."
        end
        erb :'devices/show'
        
    end

end