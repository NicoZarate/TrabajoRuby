class SimpleTask < Task
    
	validates :description, presence: true, length: { maximun: 1 }
	validates :state,:priority, presence: true,
                   
end
