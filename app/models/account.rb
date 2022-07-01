class Account < ActiveRecord::Base
    belongs_to :art
    belongs_to :buyer
end