class Round < ActiveRecord::Base
  has_many :groups
  has_many :places
  has_many :nominations
  has_many :votes

  attr_accessible :vote_attributes

  def vote_attributes=(vote_attributes)
    vote_attributes.each do |attributes|
      votes.build(attributes)
    end
  end
end
