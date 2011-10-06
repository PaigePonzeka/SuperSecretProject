class Round < ActiveRecord::Base
  has_many :groups
  has_many :places
  has_many :nominations
  has_many :votes, :dependent => :destroy

  accepts_nested_attributes_for :votes

end
