class Timer < ApplicationRecord
    belongs_to :user 
    validates :name, presence: true, uniqueness: {scope: :category, message: "Already have this timer for this category"}
    validates :category, presence: true

    def start_time=(time)
        super(time)
        self.date = time.to_s.split('T')[0].split(" ")[0]
        self.save
    end 

    def end_time=(time)
        super(time)
        if(time.nil?)
            return ''
        end
        self.total_time = time.to_datetime.localtime - self.start_time.to_datetime.localtime 
        self.save
    end

end
