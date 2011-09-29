class AddPermalinkToSites < ActiveRecord::Migration
  def change
    add_column :sites, :permalink, :string
  end
end
