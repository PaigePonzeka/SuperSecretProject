class Vote < ActiveRecord::Base
    has_many :users
    belongs_to :round
    has_many :places

    attr_accessible :tally, :user_id, :round_id, :place_id
end
