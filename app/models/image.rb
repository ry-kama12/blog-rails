class Image < ApplicationRecord
  belongs_to :post
  mount_uploader :name, ImageUploader
end
