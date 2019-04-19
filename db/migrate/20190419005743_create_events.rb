class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :date
      t.string :location
      t.string :title
      t.text :description
      t.string :map
      t.integer :relatedbookid

      t.timestamps
    end
  end
end
