class ChildController < ApplicationController

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