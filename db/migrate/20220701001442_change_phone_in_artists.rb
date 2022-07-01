class ChangePhoneInArtists < ActiveRecord::Migration[6.1]
  def change
    change_column :artists, :phone, :string
  end
end
