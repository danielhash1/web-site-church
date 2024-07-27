class AddUserIdToVideos < ActiveRecord::Migration[6.1]
  def change
    unless column_exists?(:videos, :user_id)
      add_column :videos, :user_id, :integer
    end
  end
end

