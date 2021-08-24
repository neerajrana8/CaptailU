class AddReferencesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :team, null: true, foreign_key: true
  end
end
