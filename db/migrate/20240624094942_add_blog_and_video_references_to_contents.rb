class AddBlogAndVideoReferencesToContents < ActiveRecord::Migration[7.1]
  def change
    add_reference :contents, :blog, null: false, foreign_key: true
    add_reference :contents, :video, null: false, foreign_key: true
  end
end
