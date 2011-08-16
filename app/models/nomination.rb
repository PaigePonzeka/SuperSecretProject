class Nomination < ActiveRecord::Base
  belongs_to :place
  belongs_to :user
  has_many :rounds

  
  
  
end
