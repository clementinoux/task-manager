class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index         # GET /restaurants
    @tasks = Task.all
  end

  def show          # GET /restaurants/:id
  end

  def new           # GET /restaurants/new
    @task = Task.new
  end

  def create        # POST /restaurants
    @task = Task.new(task_params)
    @task.save

    redirect_to root_path
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
    @task.update(task_params)

    redirect_to root_path
  end

  def destroy       # DELETE /restaurants/:id
    @task.destroy

    redirect_to root_path
  end

  private

  def task_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:task).permit(:name, :content, :status)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
