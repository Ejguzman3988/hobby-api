class User < ApplicationRecord
    has_many :timers
    has_secure_password

    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 

    def timers_at_date(date)
        Timer.where(user_id: self.id, date: date.strftime('%Y-%m-%d')).sort.reverse
    end

    def week(date)
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

            
        end.reject{|n| n==nil}.flatten.sort.reverse
    end

    def monthly(date)
        month_array = []
        day = date.beginning_of_month
        while(month_array.length < Time.days_in_month(Date.today.month, Date.today.year))
            month_array.push(day)
            day = day.next
        end

        month_array.map do |day|
            array = self.timers_at_date(day)
            
            if (array.empty?)
                next
            else
                array
            end
        end.reject{|n| n==nil}.flatten.sort.reverse
    end
    
end
