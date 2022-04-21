class AddReferenceCharToImg < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :image, foreign_key: true
  end
end
