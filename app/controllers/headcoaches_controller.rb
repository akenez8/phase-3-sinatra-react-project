class HeadCoachController < ApplicationController

    get '/headCoaches' do
        headcoaches = HeadCoach.all

        headcoaches.to_json
    end

    post '/headCoaches' do
        headcoach = HeadCoach.create(params)
        headcoach.to_json
    end
end