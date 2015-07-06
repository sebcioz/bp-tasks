class TasksController < ApplicationController

  def index
    render json: Task.all
  end

  def create
    task = Task.new(task_params)

    if task.save
      render json: task
    else
      render json: { errors: task.errors.full_messages }
    end
  end

  def complete
    task = Task.find(params[:id])
    task.complete!

    render json: task
  end

  private

  def task_params
    params.require(:task).permit(:body)
  end

end
