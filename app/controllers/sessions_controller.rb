class SessionsController < ApplicationController

    get '/sessions/login' do
     #rendering the login form
        erb :'/sessions/login'
    end

    post '/sessions' do #from login form params hash
     #gets user info from params hash
        #matches agains the existing entries in db
        #if matching, signs in, or else redirect to signup
        @user = User.find_by(name: params["name"])
        if @user != nil && @user.password = params["password"]
        session[:id] = @user.id
        redirect to '/users/:id'
        else
            redirect to '/sessions/login'
        end
    end

    get '/sessions/logout' do
    #clear the session hash
    session.clear
    redirect '/'
    end

end