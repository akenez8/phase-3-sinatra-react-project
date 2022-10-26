class TeamsController < ApplicationController

    get '/teams' do
        teams = Team.all

        teams.to_json(include: [:head_coaches, :most_valuable_players])
    end


    post '/teams' do 
        team = Team.create(
            name: params[:name],
            city: params[:city],
            win_loss_tie: params[:win_loss_tie]
        )
        team.to_json
    end

    patch '/teams_win/:id' do
        team = Team.find(params[:id])

        team.update(win: params[:win])
        team.to_json
    end

    patch '/teams_loss/:id' do
        team = Team.find(params[:id])

        team.update(loss: params[:loss])
        team.to_json
    end

    patch '/teams_tie/:id' do
        team = Team.find(params[:id])

        team.update(tie: params[:tie])
        team.to_json
    end

    delete '/teams/:id' do
        team = Team.find(params[:id])
        team.destroy
    end
end