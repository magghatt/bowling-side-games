class FixUserLeagueAccessGroupAssociation < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key "user_league_access_groups", "access_groups", column: "access_groups_id"
    remove_foreign_key "user_league_access_groups", "users"

    remove_index :user_league_access_groups, column: :access_groups_id
    remove_index :user_league_access_groups, column: :user_id

    remove_column :user_league_access_groups, :access_groups_id, :integer
    remove_column :user_league_access_groups, :user_id, :integer
  end
end
