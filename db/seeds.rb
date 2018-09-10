# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{name: 'Luke', age: 30, gender: 'male'},
                     {name: 'John', age: 26, gender: 'male'},
                     {name: 'Melanie', age: 22, gender: 'female'}])

habits = Habit.create([{title: 'meditate', description: 'Meditate for 30 minutes'},
                       {title: 'hydrate', description: 'Drink 8 cups of water each day'}])

user_habits = UserHabit.create([{user: users[1], habit: habits[1]}, {user: users[2], habit: habits[0]}, {user: users[0], habit: habits[1]}])
