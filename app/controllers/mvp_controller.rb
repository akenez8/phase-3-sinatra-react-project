class MVPController < ApplicationController

    get '/mvps' do
        mvps = MostValuablePlayer.all

        mvps.to_json
    end

    post '/mvps' do
        mvp = MostValuablePlayer.create(params)
        mvp.to_json
    end
end