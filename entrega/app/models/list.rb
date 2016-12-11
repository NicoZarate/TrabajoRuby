class List < ApplicationRecord
#commetar
    has_many :tasks , dependent: :destroy
    
	validates :name, presence: true
    validates :url, uniqueness: true                
    before_validation( on: :create) do
          if !self.name.nil? 
              self.url= self.name.parameterize() 
           end   
    	#self.url= parameterize(self.name,separator: '-')
    end   

    def to_param
        url
    end             
end
