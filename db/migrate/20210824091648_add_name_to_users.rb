class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :birthday, :string
    add_column :users, :graduation_year, :integer
    add_column :users, :position, :string
    add_column :users, :recruit, :boolean
  end
end
