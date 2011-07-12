class AddCounterLinkTagsToTags < ActiveRecord::Migration
  def self.up
    add_column :tags, :counter_link_tags, :integer
  end

  def self.down
    remove_column :tags, :counter_link_tags
  end
end
