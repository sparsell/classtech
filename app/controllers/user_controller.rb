class UserController < ApplicationController


    get '/user/profile' do
        erb :'user/profile'
    end

    get '/user/signup' do
        erb :'user/signup'
    end

end