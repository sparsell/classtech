class RuleController < ApplicationController

    get '/rules' do
        @rules = Rule.all 
        erb :'rules/index'
    end

    get '/rules/:id' do
        @rule = Rule.find(params[:id])
        @children = @rule.children 

        if @children.empty?
            flash[:message] = "There aren't any children who have this screen time rule."
            erb :'rules/show'
        else
            erb :'rules/show'
        end
        
    end

end