class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON #if you use SQlite, add this line
  belongs_to :user, optional: true

  #rails g migrations add_images_to users images:json
  #rake db:migrate
end
