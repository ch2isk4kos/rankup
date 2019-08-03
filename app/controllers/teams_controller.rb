class TeamsController < ApplicationController

    before_action :find_team, only: [:index, :show]

    def index
        @teams = Team.all
    end

    def new
        @team = Team.new
    end

    def create
        @team = Team.new(team_params)

        if @team.save
            redirect_to team_path(@team)
        else
            render :new
        end
    end

    def show; end

    private

    def team_params
        params.require(:team).permit(:city, :name, :year)
    end

    def find_team
        @team = Team.find(params[:id])
    end

end
