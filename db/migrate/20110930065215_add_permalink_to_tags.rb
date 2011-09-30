class AddPermalinkToTags < ActiveRecord::Migration
  def change
    add_column :tags, :permalink, :string
  end
end
