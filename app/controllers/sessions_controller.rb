class SessionsController < ApplicationController

    get '/sessions/login' do
     #rendering the login form
        erb :'/sessions/login'
    end

    post '/sessions' do #from login form params hash
        #matches agains the existing entries in db
        #if matching, signs in, or else redirect to signup
        @user = User.find_by(user_name: params[:user_name])
        
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
<<<<<<< HEAD
            redirect "/sessions/success"
        else
            redirect '/sessions/failure'
        # if @user != nil && @user.password == params["password"]
        # session[:user_id] = @user.id
        # redirect "/users/#{@user.id}"
        
        # else
        #     redirect '/sessions/login'
        end
    end

    get '/success' do
        if logged_in?
            erb :"/users/#{@user.id}"
=======
           
            redirect "/users/#{@user.id}"
>>>>>>> 4f5a7bed8fc789ed692e5c8981feb8d491a772b8
        else
            redirect '/sessions/login'
        end
    end

    get '/sessions/logout' do
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
end