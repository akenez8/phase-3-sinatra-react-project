class HeadCoachController < ApplicationController

    get '/headcoaches' do
        headcoaches = HeadCoach.all

        headcoaches.to_json
    end

    post '/headcoaches' do
        headcoach = HeadCoach.create(params)
        headcoach.to_json
    end
end