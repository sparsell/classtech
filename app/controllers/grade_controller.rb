class GradeController < ApplicationController
    
    get '/grades' do
        @grades = Grade.all
        erb :'grades/index'
    end

    get '/grades/:id' do
        @grade = Grade.find(params[:id])
        # @children = Child.all
        @children = @grade.children

        @message = @children.empty? ? "There aren't any kids in this grade.": false
        erb :'grades/show'
    end

end