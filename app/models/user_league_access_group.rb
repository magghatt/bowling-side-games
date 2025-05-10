class UserLeagueAccessGroup < ApplicationRecord
	belongs_to :user, :access_group
end
