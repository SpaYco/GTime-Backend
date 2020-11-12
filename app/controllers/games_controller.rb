class GamesController < ApplicationController
    skip_before_action :verify_authenticity_token
    

 def index
    games = Game.all
    render json: games
 end

 def show
    game = Game.find(params[:id])
    render json: game
 end


 def measure
  game = Game.findparams(params[:id])
  result = get_stats(game, [game.memory, game.intelligence, game.social])
  render json: result
 end

 

 def create
    game = Game.new(game_params)
      if game.save
        render json: game, status: 200
      else
        render json: game.errors, status: :unprocessable_entity
      end
  end

  private

  def game_params
    params.require(:game).permit(:name, :memory, :intelligence, :social, :link)
  end

  def get_stats(hours, measurements)
    result = []
    measurements.each do |measurement|
      result.push(hours * measurement)
    end
    return result
  end
end
