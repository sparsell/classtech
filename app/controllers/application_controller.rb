require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    enable :sessions
    set :session_secret, "my_secret_session"
    set :public_folder, 'public'
    set :views, 'app/views'
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
        User.find_by(id: session[:user_id])
    end
  end

end
