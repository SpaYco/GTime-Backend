class UsersController < ApplicationController
 skip_before_action :verify_authenticity_token

 def show
    @user = User.find(params[:id])
    @gtimes = @user.gtimes
    render json: { user: @user, gtimes: @gtimes }
 end

 def create
    @user = User.new(user_params)
      if @user.save
        render json: @user, status: 200, location: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
    
end