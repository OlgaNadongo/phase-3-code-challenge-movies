# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here

Role.create(salary: 48000, character_name:"Jerry", movie_id:mean_girls.id, actor_id:lindsay_lohan.id )
Role.create(salary: 18000, character_name:"Arya", movie_id:spice_world.id, actor_id:tina_fey.id )
Role.create(salary: 20000, character_name:"Zia", movie_id:spice_world.id, actor_id:baby_spice.id )
Role.create(salary: 40000, character_name:"Asha", movie_id:mean_girls.id, actor_id:ginger_spice.id )
Role.create(salary: 16000, character_name:"Mia", movie_id:mean_girls.id, actor_id:scary_spice.id )
Role.create(salary: 32000, character_name:"Alma", movie_id:spice_world.id, actor_id:sporty_spice.id )
Role.create(salary: 9000, character_name:"Vera", movie_id:mean_girls.id, actor_id:posh_spice.id )

puts "Seeding done!"