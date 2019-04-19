class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.string :genre
      t.string :agerange
      t.integer :pagecount
      t.integer :wordcount
      t.date :releasedate
      t.text :blurb
      t.text :excerpt
      t.string :type
      t.string :format
      t.string :relatedlink

      t.timestamps
    end
  end
end
