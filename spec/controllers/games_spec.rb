require "rack/test"

describe "Games Constoller", :type => :request do
  it 'create game' do
    post '/games', params: { game: {
      name: 'Fortnite',
      memory: 5,
      intelligence: 5,
      social: -2,
      link: 'https://i.imgur.com/Jf1m3eb.jpg'
    } }

    expect(Game.first.name).to eql('Fortnite')
    expect(Game.first.name).not_to eql('Minecraft')
  end
end
