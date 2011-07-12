class RemoveOldTagrelations < ActiveRecord::Migration
  def self.up
    drop_table :article_tags
    drop_table :post_tags
  end

  def self.down
    create_table :article_tags do |t|
      t.references :article
      t.references :tag

      t.timestamps
    end

    add_index :article_tags, [:article_id, :tag_id]

    create_table :post_tags do |t|
      t.references :post
      t.references :tag

      t.timestamps
    end

    add_index :post_tags, [:post_id, :tag_id]
  end
end
