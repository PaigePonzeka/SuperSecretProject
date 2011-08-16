class CreateNominations < ActiveRecord::Migration
  def self.up
    create_table :nominations do |t|
      t.integer :round_id
      t.integer :place_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :nominations
  end
end
