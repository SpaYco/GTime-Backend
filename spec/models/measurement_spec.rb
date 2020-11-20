require 'capybara/rspec'
require 'rails_helper'

describe 'Measurement', type: :feature do
  before :each do
    measurement = Measurement.new(game_id: Game.first.id, user_id: User.first.id, hours: 2)
    measurement.save
  end

  it 'creates a Measurement' do
    expect(Measurement.first.memory).to eql(10)
    expect(Measurement.first.memory).not_to eql(5)
  end
end
