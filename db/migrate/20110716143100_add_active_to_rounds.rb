class AddActiveToRounds < ActiveRecord::Migration
  def self.up
    add_column :rounds, :is_active, :boolean, :default => 1
  end

  def self.down
    remove_column :rounds, :is_active
  end
end
