class CreateSiteTechnologies < ActiveRecord::Migration
  def change
    create_table :site_technologies do |t|
      t.integer :site_id
      t.integer :technology_id

      t.timestamps
    end
  end
end
