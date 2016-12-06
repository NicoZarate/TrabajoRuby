class List < ApplicationRecord
#commetar
	validates :name, presence: true,
                    length: { minimum: 1 }
    validates :url, uniqueness: true                
    before_validation( on: :create) do
    	self.url= self.name.parameterize()
    	#self.url= parameterize(self.name,separator: '-')
    end                
end
