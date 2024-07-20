class Blog < ApplicationRecord
  #has_many :contents
  #has_many :videos, through: :contents

  #belongs_to :user
  #has_many :posts, dependent: :destroy
  #belongs_to :user

  #validates :title, presence: true
  #validates :description, presence: true

  belongs_to :user
  has_many :videos
end
