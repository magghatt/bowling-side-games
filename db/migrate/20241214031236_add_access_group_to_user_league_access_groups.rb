class AddAccessGroupToUserLeagueAccessGroups < ActiveRecord::Migration[8.0]
  def change
    add_reference :user_league_access_groups, :access_group, null: false, foreign_key: true
  end
end
