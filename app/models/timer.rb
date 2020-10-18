class Timer < ApplicationRecord
    
    def end_time=(time)
        super(time)
        self.total_time = time.utc - self.start_time.utc 
        self.save
    end

    def self.timers_at_date(date)
        where(date: date.strftime('%Y-%m-%d'))
    end

    def self.week(date)
        week_array = []
        day = date.beginning_of_week
        while(week_array.length < 7)
            week_array.push(day)
            day = day.next
        end
        week_array.map do |day|
            array = self.timers_at_date(day)
            
            if (array.empty?)
                next
            else
                array
            end

            
        end.reject{|n| n==nil}.flatten
    end

end
