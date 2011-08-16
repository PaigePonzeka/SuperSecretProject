class Round < ActiveRecord::Base
  has_many :groups
  has_many :places
  belongs_to :nomination
end
