class CreateAccessGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :access_groups do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
