class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :name
      t.string :image_url
      t.string :genre 
      t.string :location
      t.string :link
      t.datetime :created_at
      t.belongs_to :artist, foreign_key: true

  end
  end
end