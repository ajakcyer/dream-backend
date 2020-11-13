# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    3.times {
        user = User.create(name: Faker::Name.name, username: Faker::Twitter.screen_name, age: 21, password: '1234567')
    3.times {
        quotes = []

        rand(2..10).times {
            quotes.push(Faker::Quotes::Shakespeare.hamlet_quote)
        }

        entry = Entry.create(description: quotes.flatten.join(','), title: Faker::TvShows::RickAndMorty.location, user_id: user.id, public: true)

        quotes = []

        6.times {
            Comment.create(comment: Faker::Hacker.say_something_smart, user_id: user.id, entry_id: entry.id)
        }
    }
}
    