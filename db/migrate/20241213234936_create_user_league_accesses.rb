class CreateUserLeagueAccesses < ActiveRecord::Migration[8.0]
  def change
    create_table :user_league_access_groups do |t|
      t.belongs_to :user_league_access_groups
      
      t.integer :user_id
      t.integer :league_id
      t.integer :access_group_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
