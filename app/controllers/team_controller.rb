class TeamsController < ApplicationController

    get '/teams' do
        teams = Team.all

        teams.to_json
    end


    post '/teams' do 
        team = Team.create(params)
        team.to_json
    end

    patch '/teams/:id' do
        team = Team.find(params[:id])

        team.update(win_loss_tie: params[:win_loss_tie])
        team.to_json
    end

    delete '/teams/:id' do
        team = Team.find(params[:id])
        team.destroy
    end
end