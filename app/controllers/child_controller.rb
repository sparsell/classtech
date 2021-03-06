class ChildController < ApplicationController

   #### CREATE ####
  get '/children/new' do
    if logged_in? 
    @grades = Grade.all
    @devices = Device.all
    @rules = Rule.all
    erb :'children/new' 
    else
      flash[:message] = "Please log in first."
      redirect '/'
    end
  end 

  post '/children' do
    if logged_in? 
      @child = Child.create(name: params[:child][:name], grade_id: params[:child][:grade_id], device_ids: params[:child][:device_ids], rule_ids: params[:child][:rule_ids], user_id: current_user[:id]) 

      #CREATE NEW DEVICE:
      if !params[:device][:device_type].empty?
        @child.devices << Device.create(device_type: params[:device][:device_type])
      end

      #CREATE NEW RULE:
      if !params[:rule][:rule_name].empty?
         @child.rules << Rule.create(rule_name: params[:rule][:rule_name])
      end

      
      @child.save 
      redirect "/children/#{@child.id}"
    else
      flash[:message] = "You must be logged in to add a child."
      redirect '/'
    end
  end


  #### READ ####
  get '/children' do
    @children = Child.all
    erb :'/children/index' # children shown in grade index for this project 
  end

  get '/children/:id' do
    @child = Child.find(params[:id])
    @grades = Grade.all
    @child.rules
    @child.devices
    erb :'/children/show' 
  end 
    
  ### UPDATE ###
  
  get '/children/:id/edit' do 
      @child = Child.find(params[:id])
      @devices = Device.all
      @rules = Rule.all
        if logged_in? && current_user.id == @child.user_id
          erb :'children/edit'
        else
          flash[:message] = "You cannot edit a child that does not belong to you."
          redirect "/grades/#{@child.grade_id}"
        end
  end

  patch '/children/:id' do
    @child = Child.find(params[:id]) 
    if logged_in? && current_user == @child.user
      @child.update(params[:child]) #update child's name
      # @child.devices << Device.find_or_create_by(params[:device_type])
      if !params[:device][:device_type].empty?
      @child.devices << Device.find_or_create_by(params[:device])
      end
      @child.save
    redirect "/children/#{@child.id}"
  else
    flash[:message] = "You don't have access to edit this child's profile."
    redirect "/children/#{@child.id}/edit"
  end
  end

  ### DELETE ###

  delete '/children/:id' do
    # binding.pry
    @child = Child.find(params[:id])
    if logged_in? && current_user.id == @child.user_id
      @child.destroy
      flash[:message] = "You have successfully deleted #{@child.name}'s profile."
    else
      flash[:message] = "You canont delete a child that does not belong to you."
    end
    redirect "/users/#{current_user.id}/profile"
  end

end