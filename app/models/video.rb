# app/models/video.rb
class Video < ApplicationRecord
  belongs_to :blog
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :blog, presence: true
end

