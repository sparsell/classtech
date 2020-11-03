class GradeController < ApplicationController
    
    get '/grades' do
        @grades = Grade.all
        erb :'grades/index'
    end

    get '/grades/:id' do
        #find all the children in the grade selected:
        @grade = Grade.find(params[:id])
        @children = @grade.children
        @devices = Device.all
        if @children.empty?
            flash.now[:message] = "There aren't any children in this grade." 
            erb :'grades/show'
        else
            erb :'grades/show'
        end
    end
end