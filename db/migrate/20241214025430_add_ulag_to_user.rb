class AddUlagToUser < ActiveRecord::Migration[8.0]
  def change
    remove_column :user_league_access_groups, :league_id, :integer
    remove_column :user_league_access_groups, :user_id, :integer
    add_reference :user_league_access_groups, :user, null: false, foreign_key: true
  end
end
