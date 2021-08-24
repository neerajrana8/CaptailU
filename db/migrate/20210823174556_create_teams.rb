class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :age_group
      t.string :coach
      t.references :tournament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
