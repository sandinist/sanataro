class ChangeTreatingAccountId < ActiveRecord::Migration
  def self.up
	remove_column :items, :type_id
  end

  def self.down
  end
end
