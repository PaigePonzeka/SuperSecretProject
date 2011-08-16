class Vote < ActiveRecord::Base
    has_many :users
    has_many :rounds
    has_many :places
end
