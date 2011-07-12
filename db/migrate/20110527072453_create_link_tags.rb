class CreateLinkTags < ActiveRecord::Migration
  def self.up
    create_table :link_tags do |t|
      t.references :tag
      t.integer :tagged_id
      t.string :tagged_type

      t.timestamps
    end
    add_index :link_tags, [:tagged_id, :tagged_type]
  end

  def self.down
    drop_table :link_tags
  end
end
