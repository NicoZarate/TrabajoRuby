class TemporalTasksController < ApplicationController
	before_action :buscarEnLista
    before_action :buscarTask , only: [:update,:destroy, :edit]

	def new
		@temporalTask=TemporalTask.new
	end	

	def create
     #  @list = List.find_by(params[:list_url])
      # @list_id = List.find_by(params[:list_url]).id
       @temporalTask=TemporalTask.new(task_params)
       @temporalTask.list_id=@list.id
       if @temporalTask.save
          redirect_to @list
        else
           render 'new'
         end 
            
    end
    def edit
       
    end

    def update
      # @temporalTask = temporalTask.find_by(params[:id])
 
     if @temporalTask.update(task_params)
          redirect_to @list
      else
       render 'edit'
     end
  end

  def destroy
      # @list = List.find_by(url:params[:id])
       #@longTask=@list.tasks.find_by(params[:id])
       
       @temporalTask.destroy
 
      redirect_to @list
    end


	
	private
    def buscarEnLista

      @list = List.find_by(url: params[:list_id])
      
    end
    def buscarTask
       @temporalTask=TemporalTask.find(params[:id])
    end
    def task_params
      params.require(:temporal_task).permit(:description, :state ,:priority,:validation_start,:validation_end)
    end
    
end
