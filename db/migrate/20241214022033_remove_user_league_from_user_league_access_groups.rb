class RemoveUserLeagueFromUserLeagueAccessGroups < ActiveRecord::Migration[8.0]
  def change
    remove_index :user_league_access_groups, column: :user_league_access_groups_id

    remove_column :user_league_access_groups, :user_league_access_groups_id, :integer
  end
end
