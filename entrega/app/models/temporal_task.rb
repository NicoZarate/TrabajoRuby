class TemporalTask < Task
	validates :validation_start,  presence: true
    validates :validation_end, presence: true
    validates :validation_start,  date: { before: :validation_end }


    def already_expired?
       if self.validation_end < Date.today
       	   self.state='Expirada'
       	    self.save
       	    false
       	else
       		true
       	end

    end
    
end
