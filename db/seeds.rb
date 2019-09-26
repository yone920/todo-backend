# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Category.destroy_all
Todo.destroy_all


#
category1= Category.create(name: 'Personal' )
category2 = Category.create(name: 'Business' )
category3 = Category.create(name: 'Family' )

puts "happy category seeding"


todo1 = Todo.create(text: 'Back to school Shopping', category_id: category1.id)
todo2 = Todo.create(text: 'Visit Mike', category_id: category1.id)
todo3 = Todo.create(text: 'Clean the kitchen', category_id: category1.id)

todo4 = Todo.create(text: 'Start the portfolio project', category_id: category2.id)
todo5 = Todo.create(text: 'Take product photography', category_id: category2.id)

todo6 = Todo.create(text: 'Take nabi to the zoo', category_id: category3.id)
todo6 = Todo.create(text: 'Visit Muzit family', category_id: category3.id)

puts "happy todo seeding"




#   Character.create(name: 'Luke', movie: movies.first)

