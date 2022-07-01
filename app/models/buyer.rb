class Buyer < ActiveRecord::Base
    has_many :accounts
    has_many :arts, through: :accounts
end