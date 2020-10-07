class UserController < ApplicationController

    get '/users/profile' do
        erb :'users/profile'
    end
    
    get '/users/:id' do 
        @user = User.find(params[:user_id])
        erb :'users/profile'
    end


end