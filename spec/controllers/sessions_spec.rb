require "rack/test"

describe "Signin API", :type => :request do
  before :each do
    user = User.new(uname: 'SpaYco')
    user.save
  end
  it 'check user' do
    get '/signin?uname=SpaYco'

    expect(response.status).to eq(200)
  end
end
