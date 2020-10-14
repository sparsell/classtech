class ChildController < ApplicationController

  get '/children' do
    erb :'children/show'
  end

  get '/children/new' do
    @grades = Grade.all
    @devices = Device.all
    erb :'children/new' 
  end 

  post '/children' do
    @child = Child.create(name: params[:child][:name], grade_id: params[:child][:grade_id], device_ids: params[:child][:device_ids]) 
    if !params[:device][:device_type].empty?
        @child.devices << Device.create(device_type: params[:device][:device_type])
        @child.user_id = session[:user_id]
    end
    erb :'/children/show'
  end

  get '/children/:id' do
    #when a link brings you here there are no params...
   @child = Child.find_by(name: params[:child][:name])
    erb :'children/show' 
  end 
    
  get '/children/:id/edit' do 
    @child = Child.find(params[:id])
    @devices = Device.all
    erb :'/children/edit'
  end

end