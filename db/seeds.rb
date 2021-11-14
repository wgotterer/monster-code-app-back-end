puts "🌱 Seeding spices..."

wizard = Avatar.create(image_url:"https://i.pinimg.com/originals/32/77/bc/3277bc83ceab26ba47b99e2d1d1097fb.jpg", name:"Wizard")


userOne = User.create(name:"The First", avatar_id: wizard.id )

levelOne = Level.create(name:"Level One", user_id: userOne.id)



questionOne = Question.create(level_id: levelOne.id, question:"What variable cannot be reassigned in javaScript?", answer:"const" )

monsterOne = Monster.create(name:"Smiley", image_url: "https://media.istockphoto.com/vectors/funny-cartoon-monster-vector-id853871352", level_id:levelOne.id)





puts "✅ Done seeding!"
