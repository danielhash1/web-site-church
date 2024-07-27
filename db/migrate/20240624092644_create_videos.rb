class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :url  # Add this line to define the 'url' attribute
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

