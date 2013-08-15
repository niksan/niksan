class AddLinkTagsCountToTags < ActiveRecord::Migration
  def self.up
    add_column :tags, :link_tags_count, :integer
    remove_column :tags, :counter_link_tags
  end

  def self.down
    remove_column :tags, :link_tags_count
    add_column :tags, :counter_link_tags, :integer
  end
end
