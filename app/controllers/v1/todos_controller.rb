module V1
  class TodosController < ApplicationController
    def index
      todos = Todo.order(created_at: :desc)
      render json: { status: 'SUCCESS', message: 'loaded todos', data: todos }
    end

    def show
      todo = Todo.find(params[:id])
      render json: { status: 'SUCCESS', message: 'loaded the todo', data: todo }
    end

    def create
      todo = Todo.new(todo_params)
      if todo.save
        render json: { status: 'SUCCESS', message: 'loaded the todo', data: todo }
      else
        render json: { status: 'ERROR', message: 'todo not saved', data: todo.errors }
      end
    end

    def destroy
      todo = todo.find(params[:id])
      todo.destroy
      render json: { status: 'SUCCESS', message: 'deleted the todo', data: todo }
    end

    def update
      todo = Todo.find(params[:id])
      if todo.update(todo_params)
        render json: { status: 'SUCCESS', message: 'updated the todo', data: todo }
      else
        render json: { status: 'SUCCESS', message: 'loaded the todo', data: todo }
      end
    end

    private

    def todo_params
      params.require(:todo).permit(:title, :content, :label, :tag)
    end
  end
end