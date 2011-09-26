class Vote < ActiveRecord::Base
    has_many :users
    has_many :rounds
    has_many :places

    attr_accessible :count, :user_id, :round_id, :place_id
end
