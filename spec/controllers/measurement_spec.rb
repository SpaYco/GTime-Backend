require 'rack/test'

describe 'Measurements Constoller', type: :request do
  it 'create measurement' do
    post '/measurements', params: { id: User.first.id, measurement: {  game_id: Game.first.id, hours: 2 } }

    
    expect(Measurement.first.memory).to eql(10)
    expect(Measurement.first.memory).not_to eql(5)
  end
end
