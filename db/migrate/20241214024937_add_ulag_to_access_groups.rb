class AddUlagToAccessGroups < ActiveRecord::Migration[8.0]
  def change
    remove_column :user_league_access_groups, :access_group_id, :integer
    add_reference :user_league_access_groups, :access_groups, null: false, foreign_key: true
  end
end
