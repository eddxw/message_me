# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Eduardo', password: 'password')
User.create(username: 'Gandalf', password: 'password')
User.create(username: 'Harry', password: 'password')
User.create(username: 'Arya', password: 'password')
User.create(username: 'Linley', password: 'password')
User.create(username: 'Gosu', password: 'password')

Message.create(body: 'This is a message', user: User.last)
Message.create(body: 'This is another message', user: User.first)
Message.create(body: 'Expecto Patronus!!', user: User.find(3))
