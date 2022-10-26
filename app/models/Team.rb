class Team < ActiveRecord::Base
    has_many :most_valuable_players
    has_many :head_coaches
end
