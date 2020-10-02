class SessionsController < ApplicationController

    get '/sessions/login' do
     #rendering the login form
        erb :'/sessions/login'
    end

    post '/sessions' do
     #gets user info from params hash
        #matches agains the existing entries in db
        #if matching, signs in, or else redirect to signup
        @user = User.find_by(username: params[:username], email: params[:email], password: params[:password])
        session[:id] = @user.id
        redirect '/user/profile'
    end

    get '/sessions/logout' do
    #clear the session hash
    session.clear
    redirect '/'
    end

end