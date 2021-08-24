class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :note
      t.belongs_to :player, index: true
      t.references :assessment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
