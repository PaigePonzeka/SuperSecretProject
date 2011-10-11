class Nomination < ActiveRecord::Base
  belongs_to :place
  belongs_to :user
  belongs_to :round

end
