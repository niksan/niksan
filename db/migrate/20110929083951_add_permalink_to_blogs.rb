class AddPermalinkToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :permalink, :string
  end
end
