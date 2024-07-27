class AddBlogToVideos < ActiveRecord::Migration[6.1]
  def change
    unless column_exists?(:videos, :blog_id)
      add_column :videos, :blog_id, :integer
    end
  end
end
