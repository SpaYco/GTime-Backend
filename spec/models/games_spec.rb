require 'capybara/rspec'
require 'rails_helper'

describe 'Users', type: :feature do
  before :each do
    user = Game.new("name": 'Fortnite', "memory": 5, "intelligence": 5, "social": -2, "link": 'https://i.imgur.com/Jf1m3eb.jpg')
    user.save
  end

  it 'creates a Game' do
    expect(Game.first.name).to eql('Fortnite')
    expect(Game.first.name).not_to eql('Minecraft')
  end
end
