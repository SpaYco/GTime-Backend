class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :logged?, except: :create

  def show
    user = User.find(params[:id])
    games = Game.all
    render json: { user: user, games: games }
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 200
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def logged?
    redirect_to error_path unless !params[:uid].nil? || params[:uid] != ''
  end
end
