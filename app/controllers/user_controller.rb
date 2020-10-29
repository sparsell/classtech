require 'sinatra/flash'

class UserController < ApplicationController

    ############# SIGNUP #####################
    get '/users' do
        erb :'users/signup'
    end

    post '/users/signup' do
        @user = User.new(name: params[:name], user_name: params[:user_name], password: params[:password])
            if @user.valid?
                @user.save 
                redirect 'users/login'
            else
                flash[:message] = "That user name is already taken. Please try again."
                redirect '/users'
            end
        end

        ############# LOGIN and LOGOUT ###################
    get '/users/login' do
        erb :'/users/login' 
    end

    post '/users/login' do #from login form params hash
        #matches agains the existing entries in db
        #if matching, signs in, or else redirect to signup
        @user = User.find_by(user_name: params[:user_name])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect "/users/#{@user.id}"
        else
            flash[:message] = "You must enter a valid user name and password to login. Please try again."
            redirect '/users/login'
        end
    end

    get '/users/logout' do
        session.clear
        erb :'/index'
    end
    
    ############# CONTROLLER ##################
    
    #### READ ####
    get '/' do
        erb :'index'
    end

    # ???? What is convention here? Can I do this?  
    get '/users/:id/profile' do 
        @user = User.find(params[:id])
        @children = @user.children
        erb :'users/profile'
    end

    get '/users/:id' do 
        @user = User.find(params[:id])
        @children = @user.children
        erb :'users/profile'

    end

    # ############## HELPERS ################
    # helpers do
    #     def logged_in?
    #         !!session[:user_id]
    #     end
    
    #     def current_user
    #         @current_user = User.find(session[:user_id])
    #     end
    # end

end