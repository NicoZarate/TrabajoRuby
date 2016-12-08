class ListsController < ApplicationController
	before_action :buscarEnLista
  
  def index
       @lists = List.all
       listCookie
       @lists=to_array(cookies[:listCookie])
    end


	def show

   # @list = List.find_by(url: params[:id])
  end


	def new
		@list=List.new
    add_list @list
	end
	def edit
     #  @list = List.find_by(url: params[:id])
    end
    def update
      # @list = List.find_by(url: params[:id])
 
     if @list.update(list_params)
          redirect_to @list
      else
       render 'edit'
     end
end
	def create
		@list = List.new(list_params)
        if @list.save
           add_list @list
           redirect_to @list
       else
       	  render  'new'
       end
    end
    def destroy
      # @list = List.find_by(url: params[:id])
       @list.destroy
 
      redirect_to lists_path
    end
    private
    def buscarEnLista

      @list = List.find_by(url:params[:id])
      
    end
    def list_params
       params.require(:list).permit(:name, :url)
    end
    def listCookie
       cookies[:listCookies] ||= ''
   end

   def to_array(st)
     st.split(',')
  end
   def to_st(arreglo)
     arreglo.join(',')
   end
   def add_list(lista)
      @aux= to_array(cookies[:listCookie])
      @aux<<lista
      cookies[:listCookie]= to_st @aux
   end
end
