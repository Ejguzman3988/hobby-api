# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "test@test.com", password: "testtest")
categoryUser = User.first

collecting = {
    name: "Collecting",
    category: 'Collecting',
    
}

arts = {
    name: "Arts",
    category: 'Arts',
    
}

games = {
    name: "Games",
    category: 'Games',
    
}

modelElectronics = {
    name: "Model & Electronics",
    category: 'Model & Electronics',
    
}

performingArts = {
    name: "performing arts",
    category: 'performing arts',
    
}

sportsOutdoor = {
    name: "sports/outdoor",
    category: 'sports/outdoor',
    
}

music = {
    name: "music",
    category: 'music',
    
}

spiritualMental = {
    name: "spiritual & mental",
    category: 'spiritual & mental',
    
}

foodDrink = {
    name: "food & drink",
    category: 'food & drink',
    
}

pets = {
    name: "pets",
    category: 'pets',
    
}

work = {
    name: "work",
    category: 'work',
    
}

entertainment = {
    name: "Entertainment",
    category: 'Entertainment',
    
}

categoryUser.timers.create([
    collecting,
    arts,
    games,
    modelElectronics,
    performingArts,
    sportsOutdoor,
    music,
    spiritualMental,
    foodDrink,
    pets,
    work,
    entertainment
])

puts("success")

# DateTime.new(2001,2,3,4,5,6)
# DateTime: 2001-02-03T04:05:06+00:0
# t.string :name
# t.string :type
# t.datetime :start_time
# t.datetime :end_time
# t.datetime :total_time
# t.datetime :date