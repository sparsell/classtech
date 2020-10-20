class ChildController < ApplicationController

   #### CREATE ####
  get '/children/new' do
    @grades = Grade.all
    @devices = Device.all
    erb :'children/new' 
  end 

  post '/children' do
    @child = Child.create(name: params[:child][:name], grade_id: params[:child][:grade_id], device_ids: params[:child][:device_ids], user_id: current_user[:id]) 
    
    # need to control for duplicates
    if !params[:device][:device_type].empty? 
      # && params[:device][:device_type].valid?
        @child.devices << Device.create(params[:device])
    end
    @child.save
    
    redirect "/children/#{@child.id}"
  end


  #### READ ####
  get '/children' do
    @children = Child.all
    erb :'/children/index'
    # erb :'children/index' (but not showing all the kids to user...or could?)
  end

  get '/children/:id' do
    @child = Child.find(params[:id])
    @grades = Grade.all
    @child.devices
    erb :'/children/show' 
  end 
    
  ### UPDATE ###
  
  get '/children/:id/edit' do 
      @child = Child.find(params[:id])
    @devices = Device.all
    erb :'children/edit'
  end

  patch '/children/:id' do
    @child = Child.find(params[:id])
    if logged_in? && current_user == @child.user
      @child.update(params[:child])
      @child.devices << Device.find_or_create_by(params[:device_type])
      @child.save
    redirect "/children/#{@child.id}"
  else
    flash[:message] = "You don't have access to edit/delete this child's info"
    redirect "/children/#{@child.id}/edit"
  end
  end

  ### DELETE ###

  delete 'children/:id/delete' do
    @child = Child.find_by(id: params[:id])
    @child.delete
    erb :'/children/show'
  end

end