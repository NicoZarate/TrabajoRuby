class List < ApplicationRecord
#commetar
    has_many :tasks
	validates :name, presence: true,
                    length: { minimum: 1 }
    validates :url, uniqueness: true                
    before_validation( on: :create) do
    	self.url= self.name.parameterize()
    	#self.url= parameterize(self.name,separator: '-')
    end                
end
