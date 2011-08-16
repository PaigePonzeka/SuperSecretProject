class FixGroupMembers < ActiveRecord::Migration
  def self.up
    rename_column :group_members, :groups_id, :group_id
  end

  def self.down
  end
end
