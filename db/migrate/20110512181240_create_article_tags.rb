class CreateArticleTags < ActiveRecord::Migration
  def self.up
    create_table :article_tags do |t|
      t.references :article
      t.references :tag

      t.timestamps
    end
    add_index :article_tags, [:article_id, :tag_id]
  end

  def self.down
    drop_table :article_tags
  end
end
