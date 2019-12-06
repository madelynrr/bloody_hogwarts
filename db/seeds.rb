# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student_1 = Student.create(name: "Hermione Granger", age: 11, house: "Gryffindor")
student_2 = Student.create(name: "Harry Potter", age: 11, house: "Gryffindor")
student_3 = Student.create(name: "Ron Weasley", age: 11, house: "Gryffindor")

daad = Course.new(name: "Defense Against the Dark Arts")
transfig = Course.new(name: "Transfiguration")
herbology = Course.new(name: "Herbology")
astronomy = Course.new(name: "Astronomy")
potions = Course.new(name: "Potions")
muggles = Course.new(name: "Muggle Studies")
