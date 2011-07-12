class CreatePortfolioSites < ActiveRecord::Migration
  def self.up
    create_table :portfolio_sites do |t|
      t.references :portfolio
      t.references :site

      t.timestamps
    end
    add_index :portfolio_sites, [:portfolio_id, :site_id]
  end

  def self.down
    drop_table :portfolio_sites
  end
end
