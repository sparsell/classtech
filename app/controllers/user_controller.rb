class UserController < ApplicationController


    get '/registrations/signup' do
    #render signup form
        erb :'/registrations/signup'
    end 

    post '/registrations' do
    #gets the new user's info from params hash
    #create a new user
    #signs them in
    #redirects them 
    end

    get '/sessions/login' do
        #rendering the login form
        erb :'/sessions/login'
    end

    post '/sessions/login' do
        #gets user info from params hash
        #matches agains the existing entries in db
        #if matching, signs in, or else redirect to signup
    end

    get '/sessions/logout' do
    #clear the session hash
    end

    get '/user/profile' do
        erb :'user/profile'
    end

    get '/user/signup' do
        erb :'user/signup'
    end

end