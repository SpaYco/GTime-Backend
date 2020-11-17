require "rack/test"

describe "Signin API", :type => :request do
  before :each do
    user = User.new(name: 'SpaYco')
    user.save
  end
  it 'check user' do
    get '/signin?uid=1'

    expect(response.status).to eq(200)
  end
end
