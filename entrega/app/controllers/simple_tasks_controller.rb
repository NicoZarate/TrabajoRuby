class SimpleTasksController < ApplicationController
	before_action :buscarEnLista
  before_action :buscarTask , only: [:update,:destroy, :edit]

	def new
		@simpleTask=SimpleTask.new
	end	

	def create
     #  @list = List.find_by(params[:list_url])
      # @list_id = List.find_by(params[:list_url]).id
       @simpleTask=SimpleTask.new(task_params)
       @simpleTask.list_id=@list.id
       if @simpleTask.save
          redirect_to @list
        else
           render 'new'
         end 
            
    end
    def edit
       
    end

    def update
      # @simpleTask = SimpleTask.find_by(params[:id])
 
     if @simpleTask.update(task_params)
          redirect_to @list
      else
       render 'edit'
     end
  end

  def destroy
      # @list = List.find_by(url:params[:id])
       #@simpleTask=@list.tasks.find_by(params[:id])
       
       @simpleTask.destroy
 
      redirect_to lists_path(@list)
    end


	
	private
    def buscarEnLista

      @list = List.find_by(url: params[:list_id])
      
    end
    def buscarTask
       @simpleTask=SimpleTask.find(params[:id])
    end
    def task_params
      params.require(:simple_task).permit(:description, :state ,:priority)
    end
    
end
