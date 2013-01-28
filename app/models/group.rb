class Group < ActiveRecord::Base

  has_many :group_members
  has_many :users, :through => :group_members

  validates :name, :length => { :maximum => 25 }

  #accepts nested attributes for group_members
  accepts_nested_attributes_for :group_members, :allow_destroy => true
end
