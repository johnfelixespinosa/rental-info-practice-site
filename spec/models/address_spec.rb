require 'rails_helper'

RSpec.describe 'Address' do
  context 'with valid data'
  it 'can be be created with valid line_1, line_2, city, state, and zipcode' do
    address = Address.new(line_1: "345 Fake St.", line_2: "Suite 2", city: "Norfolk", state: "VA", zipcode: 23510)
    address.save
  
    expect(address).to be_valid
  end

  context 'with invalid data'
  it 'does not save if data is invalid' do
    address = Address.new(line_1: nil, line_2: "Suite 2", city: "Norfolk", state: "VA", zipcode: 23510)
    address.save

    expect(address).not_to be_valid
  end
end