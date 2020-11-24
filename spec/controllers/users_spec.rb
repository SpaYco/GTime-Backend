require 'rack/test'

describe 'User Constoller', type: :request do
  it 'create user' do
    post '/users', params: { user: { permit: { name: 'SpaYco' } } }

    expect(User.first.name).to eq('SpaYco')
    expect(User.first.name).not_to eq('SpaYso')
  end
end
