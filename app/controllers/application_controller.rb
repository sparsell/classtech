
require './config/environment'
require 'sinatra/flash'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    register Sinatra::Flash
    set :session_secret, "my_secret_session"
    
  end

  get '/' do
    erb :index
  end

  helpers do
  #returns a boolean if the user is logged in 
    def logged_in?
        !!session[:user_id]
    end

    #keeps track of the logged in user
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
  end

end
