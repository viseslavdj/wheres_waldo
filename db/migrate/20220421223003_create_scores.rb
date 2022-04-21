class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :seconds
      t.references :image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
