require 'capybara/rspec'
require 'rails_helper'

describe 'Users', type: :feature do
  before :each do
    user = User.new(name: 'SpaYco')
    user.save
  end

  it 'creates a user' do
    expect(User.first.name).to eql('SpaYco')
    expect(User.first.name).not_to eql('SpaYso')
  end
end
