class TodosController < ApplicationController

  def index
    @todos = Todo.where(email: session[:current_email])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todos_params.merge(email: session[:current_email]))
    if @todo.save
      redirect_to todos_path
    end
  end

  private

  def todos_params
    params.require(:todo).permit(:title)
  end

end
