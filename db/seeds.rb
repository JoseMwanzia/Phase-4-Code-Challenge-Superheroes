puts "started seeeddiingg!!"
# Create some heroes
10.times do
    Hero.create(
      name: Faker::Name.name,
      super_name: Faker::Superhero.name
    )
  end
  
  # Create some powers
  10.times do
    Power.create(
      name: Faker::Superhero.power,
      description: Faker::Lorem.paragraph
    )
  end
  
  # Assign powers to heroes
  10.times do
     HeroPower.create(
        power_id: rand(1..10),
        hero_id: rand(1..10),
        strength: ['strong','weak','average'].sample
    )
  end

  

  puts "Completed seeeddinngg!!!"