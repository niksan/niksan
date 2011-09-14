class AddColumnsToSites < ActiveRecord::Migration
  def change
    add_column :sites, :task, :text
    add_column :sites, :solution, :text
  end
end
