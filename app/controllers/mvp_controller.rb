class MVPController < ApplicationController

    get '/mvps' do
        mvps = MostValuablePlayer.all.order(:year).reverse

        mvps.to_json
    end

    post '/mvps' do
        mvp = MostValuablePlayer.create(params)
        mvp.to_json
    end
end