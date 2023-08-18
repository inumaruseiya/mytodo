class TodosController < ApplicationController
    def index
   @todos = Todo.all
 end
   
 def add
   add = Todo.new(todo_params)
   add.save
   redirect_to '/todos' 
 end
   
 def delete
   todo = Todo.find(params[:id])
   todo.destroy
   redirect_to '/todos'
 end
   
 private
   def todo_params
     params.permit(:text)
   end
end
