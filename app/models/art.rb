class Art < ActiveRecord::Base
    has_many :accounts
    has_many :buyers, through: :accounts
    belongs_to :artist
end