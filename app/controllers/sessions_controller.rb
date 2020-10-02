class SessionsController < ApplicationController

    get '/sessions/login' do
     #rendering the login form
        erb :'/sessions/login'
    end

    post '/sessions' do
     #gets user info from params hash
        #matches agains the existing entries in db
        #if matching, signs in, or else redirect to signup
        @user = User.find_by(name: params["name"])
        if @user != nil && user.password_digest = params["password_digest"]
        session[:id] = @user.id
        redirect to '/users/:id'
        end
    end

    get '/sessions/logout' do
    #clear the session hash
    session.clear
    redirect '/'
    end

end