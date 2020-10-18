# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: 'test@test.com', password: 'testtest')

six = DateTime.new(2020, 10, 16, 6, 0, 0)
gym = {
    user_id: user.id,
    name: 'Workout',
    category: 'Health',
    start_time: six,
    end_time: DateTime.new(2020, 10, 16, 7, 0, 0),
    date: Date.tomorrow.next 
}

seven = DateTime.new(2020,10,16,7,30,0)
work = {
    user_id: user.id,
    name: 'job',
    category: 'work',
    start_time: seven,
    end_time: DateTime.new(2020,10,16,12,30,0),
    date: Date.tomorrow.next
}

noon = DateTime.new(2020,10,16,12,30,0)
job = {
    user_id: user.id,
    name: 'jobsearch',
    category: 'work',
    start_time: noon,
    end_time: DateTime.new(2020,10,16,14,0,0),
    date: Date.tomorrow.next
}

four = DateTime.new(2020,10,16,16,0,0)
food = {
    user_id: user.id,
    name: 'Food Prep',
    category: 'lifestyle',
    start_time: four,
    end_time: DateTime.new(2020,10,16,18,0,0),
    date: Date.tomorrow.next

}


Timer.create([
    gym,
    work,
    job,
    food
])


Timer.all.each do |obj| 
    obj.total_time = obj.end_time.utc - obj.start_time.utc
    obj.save
end

# DateTime.new(2001,2,3,4,5,6)
# DateTime: 2001-02-03T04:05:06+00:0
# t.string :name
# t.string :type
# t.datetime :start_time
# t.datetime :end_time
# t.datetime :total_time
# t.datetime :date