puts "Deleting data..."
Avatar.destroy_all
Avatar.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
Level.destroy_all
Level.reset_pk_sequence
Question.destroy_all
Question.reset_pk_sequence
Monster.destroy_all
Monster.reset_pk_sequence



puts "🌱 Seeding stuff..."

# avatars
wizard = Avatar.create(image_url:"http://jahprovides.xyz/wp-content/uploads/2021/11/wizard.png", name:"Wizard", meta:"Wizard Stewart - Born 1575 AD", description:"This Wizard has style.  He killed Merlin and shit. A wizard is also known as a enchanter/enchantress, mage, magic-user, sorcerer/sorceress, spell-caster, warlock, witch, or magician, is someone who uses or practices magic derived from supernatural, occult, or arcane sources.")
beetlejuice = Avatar.create(image_url:"http://jahprovides.xyz/wp-content/uploads/2021/11/beetlejuice.png", name:"Beetlejuice", meta:"Beetlejuice - Born 1988 AD", description:"Beetlejuice Beetlejuice Beetlejuice")
dino = Avatar.create(image_url:"http://jahprovides.xyz/wp-content/uploads/2021/11/dino.png", name:"Dino", meta: "Rex - Born in 500,000 BC", description:"Dino is a genus of tyrannosaurid theropod dinosaur. The species Tyrannosaurus rex (rex meaning king in Latin), often called T. rex or colloquially T-Rex, is one of the best represented of these large theropods. Tyrannosaurus lived throughout what is now western North America, on what was then an island continent known as Laramidia.")
rock = Avatar.create(image_url:"http://jahprovides.xyz/wp-content/uploads/2021/11/happyrock.png", name:"Happy Rock", meta: "Happy Rock - Born Never", description:"The happiest of paper weights.")
airplane = Avatar.create(image_url:"http://jahprovides.xyz/wp-content/uploads/2021/11/plane.png", name:"Airplane", meta: "Airplane - Established 1903", description:" Brrrrrrumm Brruuummm. I've been told I have a gentle gaze.")

# levels

levelOne = Level.create(name:"Level One")
levelTwo = Level.create(name:"Level Two")
levelThree = Level.create(name:"Level Three")
levelFour = Level.create(name:"Level Four")
levelFive = Level.create(name:"Level Five")

# users
# userOne = User.create(name:"The First", avatar_id: wizard.id, level_id: levelOne.id)

# level one questions
questionOne = Question.create(level_id: levelOne.id, question:"What variable cannot be reassigned in javaScript?", answer:"const")
questionTwo = Question.create(level_id: levelOne.id, question:"true or false? The external JavaScript file must contain the <script> tag", answer:"false")
questionThree = Question.create(level_id: levelOne.id, question:"What is the DOM?", answer:"document object model")

# level 2 questions

questionFour = Question.create(level_id: levelTwo.id, question:"They accept arbitrary inputs called 'props' and return React elements describing what should appear on the screen", answer:"components")
questionFive = Question.create(level_id: levelTwo.id, question:"What are the following? GET, PATCH, POST, DELETE.", answer:"http requests")
questionSix = Question.create(level_id: levelTwo.id, question:"What transforms JSX & ES6 into Javascript?", answer:"babel")

# level 3 questions

questionSeven = Question.create(level_id: levelThree.id, question:"true or false? We should update state directly?", answer:"false")
questionEight = Question.create(level_id: levelThree.id, question:"true or false? In JSX, you can identify a class using 'className'?", answer:"true")
questionNine = Question.create(level_id: levelThree.id, question:"Components begin with a ___ letter?", answer:"capital")


# level 4 question
questionTen = Question.create(level_id: levelFour.id, question:"What do we call a function that gets called in response to an event?", answer:"event handler")
questionEleven = Question.create(level_id: levelFour.id, question:"What do we use to store information that the component itself can change?", answer:"state")
questionTwelve = Question.create(level_id: levelFour.id, question:"What do we use to store information that can only be changed by a different component?", answer:"props")


#level 5 quesitons

questionThirteen = Question.create(level_id: levelFive.id, question:"What Ruby method returns a new array containing all elements of array for which the given block returns a true value?", answer:".select")
questionFourteen = Question.create(level_id: levelFive.id, question:"What Ruby method returns a new array with one of each element, no duplicates?", answer:".uniq")
questionFifteen = Question.create(level_id: levelFive.id, question:"What Ruby method checks to see if an object is found in array and returns true or false?", answer:".include?")

# monsters

monsterOne = Monster.create(name:"Smiley", image_url: "http://jahprovides.xyz/wp-content/uploads/2021/11/smiley-1.png", level_id:levelOne.id)
monsterTwo = Monster.create(name:"Hungry Broccoli", image_url: "http://jahprovides.xyz/wp-content/uploads/2021/11/broc.png", level_id:levelTwo.id)
monsterThree = Monster.create(name:"Boot", image_url: "http://jahprovides.xyz/wp-content/uploads/2021/11/shoemonster.png", level_id:levelThree.id)
monsterFour = Monster.create(name:"Zombie Pigeon", image_url: "http://jahprovides.xyz/wp-content/uploads/2021/11/pigeonbro.png", level_id:levelFour.id)
monsterFive = Monster.create(name:"Baby", image_url: "http://jahprovides.xyz/wp-content/uploads/2021/11/babymonster.png", level_id:levelFive.id)





puts "✅ Done seeding!"
