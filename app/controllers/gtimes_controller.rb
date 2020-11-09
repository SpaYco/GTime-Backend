class GtimesController < ApplicationController
 skip_before_action :verify_authenticity_token
 before_action :logged?

 def index
    @gtimes = Gtimes.where(id: params[:id])
 end

 def show
    @gtime = Gtime.find(params[:id])
    render json: @gtime
 end

 def create
    @gtime = Gtime.new(gtime_params)
      if @gtime.save
        render json: @gtime, status: 200, location: @gtime
      else
        render json: @gtime.errors, status: :unprocessable_entity
      end
  end

  private

  def gtime_params
    params.require(:gtime).permit(:startTime, :user_id, :category_id)
  end

  def logged?
    return true if params[:uid].present? && params[:uid] != ''
    false
  end

end
