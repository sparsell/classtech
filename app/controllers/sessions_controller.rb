class SessionsController < ApplicationController

    get '/sessions/login' do
     #rendering the login form
        erb :'/sessions/login'
    end

    post '/sessions' do #from login form params hash
        #matches agains the existing entries in db
        #if matching, signs in, or else redirect to signup
        @user = User.find_by(name: params[:user_name])
        if @user != nil && @user.password == params["password"]
        session[:user_id] = @user.id
        redirect "/users/#{@user.id}"
        
        else
            redirect '/sessions/login'
        end
    end

    get '/sessions/logout' do
    #clear the session hash
    session.clear
    erb :'sessions/logout'
    end


    helpers do
        def logged_in?
            !session[:user_id]
        end

        def current_user
            User.find(session[:user_id])
        end
end