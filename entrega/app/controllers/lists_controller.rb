class ListsController < ApplicationController
	before_action :buscarEnLista, only:[:show,:update,:destroy,:edit]
  
  def index
      # @lists = List.all
      #listCookie.shift==nil ? @lists=''.split(',') : @lists=listCookie
      mega_buscador(to_array(listCookie))
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
       redirect_to lists_path
    else 
    	  render  'new'
    end
  end
  def destroy
      # @list = List.find_by(url: params[:id])
      remove_list @list
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
   def mega_buscador(listC)
        aux=[]
           listC.each do |l|
                aux<<List.find_by(url: l)
            end
            @lists=aux     
                 
   end 

   def to_array(st)
      st.split(',')
   end
   def to_st(arreglo)
      arreglo.join(',')
   end
   def add_list(lista)
     @aux= to_array(cookies[:listCookies]).last(4)
     @aux<<lista.url
     cookies[:listCookies]= to_st @aux
     #cookies[:listCookies].push(lista)
   end
   def remove_list(lista)
     @aux= to_array(cookies[:listCookies])
     @aux.delete(lista.url)
     cookies[:listCookies]= to_st @aux
   end
end
