require 'rails_helper'

RSpec.describe 'Admin Shelter Index' do
  before (:each) do
    @anh = Shelter.create({name: 'A New Hope', city: 'Las Vegas', rank: 12, foster_program: true})
    @hcw = Shelter.create({
      name: 'Heaven Can Wait',
      city: 'Denver',
      rank: 3,
      foster_program: true})
    @po = Shelter.create({
      name: 'Pawsitive Outlook',
      city: 'New York City',
      rank: 1,
      foster_program: true})
    @pet_1 = @anh.pets.create({
      name: 'Fido',
      age: 1,
      breed: 'golden retriever',
      adoptable: true
      })
    @pet_2 = @hcw.pets.create({
      name: 'Alfafa',
      age: 3,
      breed: 'brindle',
      adoptable: true
      })
    @pet_3 = @po.pets.create({
      name: 'All Might',
      age: 1,
      breed: 'labrador',
      adoptable: true
      })
  end

  it 'displays all shelters in reverse alphabetical order' do
    visit '/admin/shelters'

    expect(@po.name).to appear_before(@hcw.name, only_text: true)
  end

  xit 'has a section for shelters with pending applications' do
    visit '/admin/shelters'

    expect(page).to have_content("Shelter's with Pending Applications")

    new_app_1 = Application.create!({
      name: 'Chaz Simons',
      street_address: '1234 Cool Guy Rd',
      city: 'Las Vegas',
      state: 'NV',
      zip_code: 89106,
      good_fit: '',
      status: 'Pending'
      })
    new_app_2 = Application.create!({
      name: 'Justina H',
      street_address: '1234 Cool Gal Rd',
      city: 'Las Vegas',
      state: 'NV',
      zip_code: 89146,
      good_fit: '',
      status: 'Pending'
      })
    new_app_3 = Application.create!({
      name: 'Roger Smith',
      street_address: '123 Cherry St',
      city: 'Langley Falls',
      state: 'VA',
      zip_code: 22210,
      good_fit: '',
      status: 'In Progress'
      })
    ApplicationPet.create!(application: new_app_1, pet: @pet_2)
    ApplicationPet.create!(application: new_app_2, pet: @pet_1)
    ApplicationPet.create!(application: new_app_3, pet: @pet_3)
    save_and_open_page
    expect(page).to have_content(@anh.name)
    expect(page).to have_content(@hcw.name)
    expect(page).to_not have_content(@po.name)
  end
end
