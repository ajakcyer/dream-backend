# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    3.times {
        entry = Entry.create(description: Faker::Lorem.sentences, title: Faker::Company.catch_phrase, user_id: User.all.sample.id, public: false)

        # 2.times {
        #     Comment.create(comment: Faker::Lorem.sentence, user_id: user.id, entry_id: entry.id)
        # }
    }
    