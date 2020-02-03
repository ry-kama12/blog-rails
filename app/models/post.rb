class Post < ApplicationRecord
  has_many :images
  has_many :comments
end
