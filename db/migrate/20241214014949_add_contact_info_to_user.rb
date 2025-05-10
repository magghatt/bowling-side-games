class AddContactInfoToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :street_line1, :string
    add_column :users, :street_line2, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :email, :string
    add_column :users, :phone, :string

    remove_column :users, :contact_info_id, :integer
  end
end
