class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :x_pos
      t.integer :y_pos

      t.timestamps
    end
  end
end
