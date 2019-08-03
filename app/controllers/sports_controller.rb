class SportsController < ApplicationController

    before_action :find_sport, only: [:show]

    def index
        @sports = Sport.all
    end

    def new
        @sport = Sport.new
    end

    def create
        @sport = Sport.new(sport_params)

        if @sport.save
            redirect_to sport_path(@sport)
        else
            render :new
        end
    end

    def show; end

    private

    def sport_params
        params.require(:sport).permit(:name, :gender)
    end

    def find_sport
        @sport = Sport.find(params[:id])
    end

end
