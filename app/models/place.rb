class Place < ActiveRecord::Base
  belongs_to :round
  has_many :nominations
  
  validates :name, :length => { :maximum => 50 }
end
