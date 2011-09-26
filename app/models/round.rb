class Round < ActiveRecord::Base
  has_many :groups
  has_many :places
  has_many :nominations
  has_many :votes

  def vote_attributes=(vote_attributes)
    vote_attributes.each do |attributes|
      vote.build(attributes)
    end
  end
end
