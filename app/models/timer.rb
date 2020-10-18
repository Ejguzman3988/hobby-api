class Timer < ApplicationRecord
    belongs_to :user 
    
    def end_time=(time)
        super(time)
        self.total_time = time.utc - self.start_time.utc 
        self.save
    end

end
