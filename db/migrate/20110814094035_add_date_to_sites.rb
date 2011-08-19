class AddDateToSites < ActiveRecord::Migration
  def self.up
    add_column :sites, :date, :datetime
  end

  def self.down
    remove_column :sites, :date
  end
end
