class SessionsController < ApplicationController
  def signin
    user = User.where(name: params[:name])
    if user.exists?
      render json: { reply: 'exists', user: user, status: 200, location: user }
    else
      render json: { reply: 'noexists', status: :unprocessable_entity }
    end
  end

  def error
    render json: { reply: 'denied' }
  end
end
