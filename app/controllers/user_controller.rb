class UserController < ApplicationController

    get '/users' do
        erb :'index'
    end
    
    get '/users/:id' do 
        @user = User.find(params[:id])
        erb :'users/profile'
    end


end