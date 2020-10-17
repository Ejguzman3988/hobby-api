# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

six = DateTime.new(2020, 10, 16, 6, 0, 0)
gym = {
    name: 'Workout',
    category: 'Health',
    start_time: six,
    end_time: DateTime.new(2020, 10, 16, 7, 0, 0),
    date: six.strftime('%m/%d/%Y')
}

seven = DateTime.new(2020,10,16,7,30,0)
work = {
    name: 'job',
    category: 'work',
    start_time: seven,
    end_time: DateTime.new(2020,10,16,12,30,0),
    date: seven.strftime('%m/%d/%Y')
}

noon = DateTime.new(2020,10,16,12,30,0)
job = {
    name: 'jobsearch',
    category: 'work',
    start_time: noon,
    end_time: DateTime.new(2020,10,16,14,0,0),
    date: noon.strftime('%m/%d/%Y')
}

four = DateTime.new(2020,10,16,16,0,0)
food = {
    name: 'Food Prep',
    category: 'lifestyle',
    start_time: four,
    end_time: DateTime.new(2020,10,16,18,0,0),
    date: noon.strftime('%m/%d/%Y')

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