class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :theme
      t.string :name
      t.string :email
      t.string :phone
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
