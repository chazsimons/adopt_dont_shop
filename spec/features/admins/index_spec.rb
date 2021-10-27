require 'rails_helper'

RSpec.describe 'Admin Shelter Index' do
  before (:each) do
    @anh = Shelter.create({name: 'A New Hope', city: 'Las Vegas', rank: 12, foster_program: true})
    @hcq = Shelter.create({
      name: 'Heaven Can Wait',
      city: 'Denver',
      rank: 3,
      foster_program: true})
    @po = Shelter.create({
      name: 'Pawsitive Outlook',
      city: 'New York City',
      rank: 1,
      foster_program: true})
  end

  it 'displays all shelters in reverse alphabetical order' do
    visit '/admin/shelters'

    expect(@po.name).to appear_before(@hcq.name, only_text: true)
  end
end
