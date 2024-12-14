class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.integer :contact_info_id
      t.string :login
      t.string :password
      t.string :first_name
      t.string :last_name
      t.datetime :last_login_date

      t.timestamps
    end
  end
end
