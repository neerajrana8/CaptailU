class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.integer :rating
      t.string :assessment_type, default: "event"
      t.belongs_to :player, index: true
      t.references :tournament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
