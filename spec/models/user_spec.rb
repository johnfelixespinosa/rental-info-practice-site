require 'rails_helper'

RSpec.describe 'User' do
  context 'with valid data'
  it 'can be be created with a first and last name' do
    user = User.new(first_name: "John", last_name: "Espinosa")
    user.save
  
    expect(user).to be_valid
  end

  context 'with invalid data'
  it 'does not save if first and last name are invalid' do
    user = User.new(first_name: nil, last_name: "Espinosa")
    
    user.save

    expect(user).not_to be_valid
  end
end