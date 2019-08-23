require 'faker'

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_pets
  end

  def generate_pets
    20.times do |i|
      pet = Pet.create!(
        :type => Faker::Creature::Animal.name,
        :name => Faker::Creature::Dog.name,
        :age => rand(1..15),
        :gender => Faker::Creature::Dog.gender
      )
      puts "Pet #{i}: type is #{pet.type} and name is '#{pet.name}' and age is '#{pet.age}' and gender is '#{pet.gender}'."
    end
  end
end

Seed.begin
