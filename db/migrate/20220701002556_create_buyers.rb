class CreateBuyers < ActiveRecord::Migration[6.1]
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :avatar 
      t.string :location
      t.string :email
    end
  end
end
