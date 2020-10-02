class RegistrationsController < ApplicationController

    get '/registrations/signup' do
        #render signup form
        erb :'/registrations/signup'
    end 
    
    post '/registrations' do
    @user = User.new(name: params[:name], password: params[:password])
        if @user.save #will return false if the password is not filled in
            
            redirect '/sessions/login'
        else
            redirect '/registrations/failures'
        end
    end

    get '/registrations/failures' do
    erb :'registrations/failures'
    end

end