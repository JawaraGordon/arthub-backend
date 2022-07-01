class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :avatar 
      t.string :location
      t.string :email
      t.integer :phone
      t.string :genre 
  end
end
end
