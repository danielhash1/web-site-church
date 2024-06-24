class Blog < ApplicationRecord
  has_many :contents
  has_many :videos, through: :contents
end
