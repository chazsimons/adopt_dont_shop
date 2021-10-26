# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
shelters = Shelter.create([{
  name: 'A New Hope',
  city: 'Las Vegas',
  rank: 12,
  foster_program: true
},{
  name: 'Heaven Can Wait',
  city: 'Denver',
  rank: 3,
  foster_program: true
},{
  name: 'Pawsitive Outlook',
  city: 'New York City',
  rank: 1,
  foster_program: true
}])

pets = Pet.create([{
  name: 'Scooby',
  age: 2,
  breed: 'Great Dane',
  adoptable: true,
  shelter_id: 1
},{
  name: 'Scrappy',
  age: 1,
  breed: 'Great Dane',
  adoptable: true,
  shelter_id: 1
},{
  name: 'Rex',
  age: 2,
  breed: 'boston terrier',
  adoptable: true,
  shelter_id: 2
},{
  adoptable: true,
  age: 1,
  breed: 'sphynx',
  name: 'Lucille Bald',
  shelter_id: 3
},{
  adoptable: false,
  age: 2,
  breed: 'saint bernard',
  name: 'Beethoven',
  shelter_id: 2
},{
  adoptable: true,
  age: 3,
  breed: 'domestic pig',
  name: 'Babe',
  shelter_id: 3
},{
  name: 'Fido',
  age: 1,
  breed: 'golden retriever',
  adoptable: true,
  shelter_id: 3
},{
  name: 'Alfafa',
  age: 3,
  breed: 'brindle',
  adoptable: true,
  shelter_id: 2
},{
  name: 'All Might',
  age: 1,
  breed: 'labrador',
  adoptable: true,
  shelter_id: 3
}])
