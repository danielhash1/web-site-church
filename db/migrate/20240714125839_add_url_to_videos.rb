class AddUrlToVideos < ActiveRecord::Migration[7.1]
  def change
    add_column :videos, :url, :string
  end
end
