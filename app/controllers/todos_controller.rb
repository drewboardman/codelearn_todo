class TodosController < ApplicationController
	include TodosHelper

  def new
	  @todo = Todo.new
  end

  def index
  	@todos = Todo.all
  	render :index
  end

  def show
  	@todo = Todo.find(params[:id])
  end

  def delete
  	@last = Todo.last
  	@last.delete
  	redirect_to action: 'index'
  end

  def create
  	@todo = Todo.new(todo_params)
  	@todo.save
  	redirect_to todo_path(@todo)
  end

end
