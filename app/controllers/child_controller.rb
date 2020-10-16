class ChildController < ApplicationController

   #### CREATE ####
  get '/children/new' do
    @grades = Grade.all
    @devices = Device.all
    erb :'children/new' 
  end 

  post '/children' do
    
    @child = Child.create(name: params[:child][:name], grade_id: params[:child][:grade_id],  device_ids: params[:child][:device_ids], user_id: current_user[:id]) 
    
    #select from checkbox or create new and
    # need to control for duplicates!
    if !params[:device][:device_type].empty?
        @child.devices << Device.create(params[:device])
        # @child.devices << Device.create(device_type: params[:device][:device_type])
    end
    @child.save
    # binding.pry
    
    redirect "/children/#{@child.id}"
  end


  #### READ ####
  get '/children' do
    erb :'children/show'
    # erb :'/children/index'
    # erb :'children/index' (but not showing all the kids to user...or could?)
  end

  get '/children/:id' do
    @child = Child.find_by(params[:id])
    erb :"/children/show" 
  end 
    
  ### UPDATE ###
  
  get '/children/:id/edit' do 
    @child = Child.find(params[:id])
    @devices = Device.all

    erb :'children/edit'
  end

  patch '/children/:id' do
    @child = Child.find_by_id(params[:id])
    @child.update(params(:child))
    
    redirect "/children/#{@child.id}"
  end

  ### DELETE ###

end