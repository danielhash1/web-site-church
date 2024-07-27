# app/models/video.rb
class Video < ApplicationRecord
  belongs_to :user
  #belongs_to :blog


  validates :title, presence: true
  validates :description, presence: true
  #validates :blog, presence: true
end
