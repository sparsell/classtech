class GradeController < ApplicationController

    #want to show all children and devices by grade
    
    get '/grades' do
        @grades = Grade.all
        erb :'grades/index'
    end

    get '/grades/:id' do
        @grade = Grade.find(params[:id])
        # binding.pry
        @grades = Grade.all
        @children = Child.all
        @devices = Device.all
        erb :'grades/show'
    end

end