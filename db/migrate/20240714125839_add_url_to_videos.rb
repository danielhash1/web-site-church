class AddUrlToVideos < ActiveRecord::Migration[6.1]
  def change
    unless column_exists?(:videos, :url)
      add_column :videos, :url, :string
    end
  end
end

