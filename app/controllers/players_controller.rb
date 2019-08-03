class PlayersController < ApplicationController

    before_action :find_player, only: [:show]

    def new
        @player = Ranking.new
    end

    def create
        @player = Ranking.new(player_params)

        if @player.save
            redirect_to player_path(@player)
        else
            render :new
        end
    end

    def show; end

    private

    def player_params
        params.require(:player).permit(
            :first_name, :last_name, :position, :number, :year, :ranking_id, :team_id)
        )
    end

    def find_player
        @player = Ranking.find(params[:id])
    end

end
