class Place < ActiveRecord::Base
  # The entire database of all the places a user has entered
  # UsersPlaces are all the places a user has nominated or voted on
  # Many Places have Many users

  #belongs_to :round
  #has_many :nominations
  #has_many :users

  #validates :name, :length => { :maximum => 50 }
end
