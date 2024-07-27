class AddUserIdToBlogs < ActiveRecord::Migration[7.1]
  def change
    add_column :blogs, :user_id, :integer
  end
end
