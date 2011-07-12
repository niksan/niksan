class AddLinkTagsCountToTags < ActiveRecord::Migration
  def self.up
    add_column :tags, :link_tags_count, :integer
    remove_column :tags, :counter_link_tags
    Tag.reset_column_information
    Tag.find_each do |m|
      Tag.reset_counters m.id, :link_tags
    end
  end

  def self.down
    remove_column :tags, :link_tags_count
    add_column :tags, :counter_link_tags, :integer
  end
end
