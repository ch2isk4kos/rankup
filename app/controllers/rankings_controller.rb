class RankingsController < ApplicationController

    before_action :find_ranking, only: [:show]

    def new
        @ranking = Ranking.new
    end

    def create
        @ranking = Ranking.new(ranking_params)

        if @ranking.save
            redirect_to ranking_path(@ranking)
        else
            render :new
        end
    end

    def show; end

    private

    def ranking_params
        params.require(:ranking).permit(:description, :category_id, :user_id)
    end

    def find_ranking
        @ranking = Ranking.find(params[:id])
    end

end
