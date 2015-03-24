class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description
      t.string :board
      t.string :url
      t.string :pin_image

      t.timestamps null: false
    end
  end
end
