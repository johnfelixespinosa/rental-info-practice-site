require 'rails_helper'

RSpec.describe 'Apartment' do
  it 'has an address' do
    address = Address.new(line_1: "345 Fake St.", line_2: nil, city: "Norfolk", state: "VA", zipcode: 23510, id: 01)
    address.save

    apartment = Apartment.new(address_id: 01)
    apartment.save
  
    expect(address).to be_valid
    expect(apartment).to be_valid
  end

end