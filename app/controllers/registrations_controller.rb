class RegistrationsController < ApplicationController

    get '/registrations/signup' do
        'render signup form'
        # erb :'/registrations/signup'
    end 
    
    post '/registrations' do
    #gets the new user's info from params hash
    #create a new user
    #signs them in
    #redirects them 
    @user = User.create(username: params[:username], email: params[:email], password: params[:password])
    session[:id] = @user.id
    redirect '/user/profile'
    end

end