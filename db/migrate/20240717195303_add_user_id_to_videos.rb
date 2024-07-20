class AddUserIdToVideos < ActiveRecord::Migration[7.1]
  def change
    add_column :videos, :user_id, :integer
  end
end
