class TasksController < ApplicationController
 def create
    @list = List.find(params[:list_id])
    @task = current_user.tasks.new(task_params)
    @task.list = @list
    @new_task = Task.new

    authorize @task
        
    if @task.save
      flash[:notice] = "Task was created. Now get to work."
    else
      flash[:error] = "Your task didn't save. Feel free to try again." 
    end
    
     respond_to do |format|
      format.html
      format.js
    end
 end
  
  def destroy
     @list = List.find(params[:list_id])
     @task = @list.tasks.find(params[:id])
 
     authorize @task
     if @task.destroy
       flash[:notice] = "Task was removed."
     else
       flash[:error] = "Task couldn't be deleted. Try again."
     end
    
     respond_to do |format|
       format.html
       format.js
     end
  end
  
private

  def task_params
    params.require(:task).permit(:description)
  end

end
