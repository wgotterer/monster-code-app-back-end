puts "Deleting Restaurant/Customer data..."
Avatar.destroy_all
User.destroy_all
Level.destroy_all
Question.destroy_all
Monster.destroy_all

puts "🌱 Seeding spices..."

wizard = Avatar.create(image_url:"https://i.pinimg.com/originals/32/77/bc/3277bc83ceab26ba47b99e2d1d1097fb.jpg", name:"Wizard")
beetlejuice = Avatar.create(image_url:"https://cdn.vox-cdn.com/thumbor/C-puGOF5dt6L74HipMA6k4k3XlU=/60x0:1140x720/1400x1400/filters:focal(60x0:1140x720):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/49663815/timburton.0.0.jpg", name:"Beetlejuice")
dino = Avatar.create(image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGPMOp_3rq4S5hEbG2L5PFXukkR0A4W4FuSQ&usqp=CAU", name:"Dino")
rock = Avatar.create(image_url:"http://cdn.shopify.com/s/files/1/1064/4298/products/Rock_Face-_Happy_grande.jpg?v=1489345676", name:"Happy Rock")
airplane = Avatar.create(image_url:"https://w7.pngwing.com/pngs/607/226/png-transparent-airplane-cartoon-plane-creative-train-marine-mammal-photography-decoupage.png", name:"Airplane")



levelOne = Level.create(name:"Level One")
levelTwo = Level.create(name:"Level Two")
levelThree = Level.create(name:"Level Three")
levelFour = Level.create(name:"Level Four")
levelFive = Level.create(name:"Level Five")

userOne = User.create(name:"The First", avatar_id: wizard.id, level_id: levelOne.id)


questionOne = Question.create(level_id: levelOne.id, question:"What variable cannot be reassigned in javaScript?", answer:"const")

monsterOne = Monster.create(name:"Smiley", image_url: "https://media.istockphoto.com/vectors/funny-cartoon-monster-vector-id853871352", level_id:levelOne.id)
monsterTwo = Monster.create(name:"Hungry Broccoli", image_url: "https://media.istockphoto.com/vectors/broccoli-monster-gmo-mutant-angry-vegetable-with-teeth-hungry-alien-vector-id1184217695", level_id:levelTwo.id)
monsterThree = Monster.create(name:"Boot", image_url: "https://image.shutterstock.com/image-vector/vector-illustration-monster-boots-260nw-205434367.jpg", level_id:levelThree.id)
monsterFour = Monster.create(name:"Zombie Pigeon", image_url: "https://c8.alamy.com/comp/2FMYCY5/zombie-pigeon-isolated-dove-revived-dead-monster-2FMYCY5.jpg", level_id:levelFour.id)
monsterFive = Monster.create(name:"Baby", image_url: "https://www.crushpixel.com/big-static18/preview4/virus-baby-monster-funny-spooky-2782406.jpg", level_id:levelFive.id)





puts "✅ Done seeding!"
