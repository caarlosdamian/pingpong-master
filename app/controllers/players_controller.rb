class PlayersController < ApplicationController
    def show
        @player = Player.find(params[:id])
    end
    def new
    end
    def create 
        @player = Player.new(player_params)
byebug
        if  @player.save
            redirect_to @player
        else
        render 'new'
        end
    end

    private
    def player_params
        params.require(:player).permit(:name,:final_score,:match_id)
    end
end
