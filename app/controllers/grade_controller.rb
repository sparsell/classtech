class GradeController < ApplicationController

    #want to show all children and devices by grade
    
    get '/grades' do
        erb :'grades/index'
    end

    post '/grades' do
        @grade = Grade.all(grade: params)
        erb :'grades/show'
    end

end