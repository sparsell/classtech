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
        # list each childs devices after their name:
        
        @message = @children.empty? ? "There aren't any children in this grade.": false
        erb :'grades/show'
    end

end