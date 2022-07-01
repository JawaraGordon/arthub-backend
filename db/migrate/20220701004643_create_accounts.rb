class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
      create_table :accounts do |t|
        t.string :name
        t.integer :account_number
        t.string :password 
        t.string :location
        t.string :account_type
        t.belongs_to :art, foreign_key: true
        t.belongs_to :buyer, foreign_key: true
  
    end
  end
end
