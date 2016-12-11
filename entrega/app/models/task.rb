class Task < ApplicationRecord
  belongs_to :list
  validates :description, presence: true, length: { maximum: 255 }
  validates :state,:priority, presence: true

 #es usado por sort este mensaje, se re define
  def <=> (other)
  	#self.priority == "alta" ? aux=1 : self.priority == "media" ? aux=2 : aux=3 
  	#other.priority == "alta" ? aux2=1 : other.priority == "media" ? aux2=2 : aux=3
  	if self.priority == "alta"  
  		aux=1 
  	elsif self.priority == "media" 
  	  aux=2 
  	else 
  		aux=3
  	end	
  	if other.priority == "alta"  
  		aux2=1 
  	elsif other.priority == "media" 
  	  aux2=2 
  	else 
  		aux2=3
  	end
    aux<=>aux2
 end



          
end
