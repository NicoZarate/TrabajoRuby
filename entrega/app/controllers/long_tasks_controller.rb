class LongTasksController < ApplicationController
	before_action :buscarEnLista
    before_action :buscarTask , only: [:update,:destroy, :edit]

	def new
		@longTask=LongTask.new
	end	

	def create
     #  @list = List.find_by(params[:list_url])
      # @list_id = List.find_by(params[:list_url]).id
       @longTask=LongTask.new(task_params)
       @longTask.list_id=@list.id
       if @longTask.save
          redirect_to @list
        else
           render 'new'
         end 
            
    end
    def edit
       
    end

    def update
      # @longTask = longTask.find_by(params[:id])
 
     if @longTask.update(task_params)
          redirect_to @list
      else
       render 'edit'
     end
  end

  def destroy
      # @list = List.find_by(url:params[:id])
       #@longTask=@list.tasks.find_by(params[:id])
       
       @longTask.destroy
 
      redirect_to list_path(@list)
    end


	
	private
    def buscarEnLista

      @list = List.find_by(url: params[:list_id])
      
    end
    def buscarTask
       @longTask=LongTask.find(params[:id])
    end
    def task_params
      params.require(:long_task).permit(:description, :state ,:priority,:percentage)
    end
    
end
