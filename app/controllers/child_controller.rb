class ChildController < ApplicationController

  get '/children' do
    erb :'children/show'
  end

  get '/children/new' do
    erb :'children/new' 
  end 

  get '/children/:id' do
    @device = Device.find_by(params[:id])
    erb :'children/show' 
  end 
  
  post '/children' do
    @child = Child.create(:name => params[:name]) 
    redirect to "/children/#{@child.id}"
  end
    
  get '/children/:id/edit' do 
    @child = Child.find(params[:id])
    @devices = Device.all
    erb :'/children/edit'
  end

end