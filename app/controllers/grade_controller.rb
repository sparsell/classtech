class GradeController < ApplicationController

    #want to show all children and devices by grade
    
    get '/grades' do
        @grades = Grade.all
        erb :'grades/index'
    end

    post '/grades' do
        @grades = Grade.all
        erb :'grades/show'
    end

end