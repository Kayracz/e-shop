class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  # serialize :image, JSON #if you use SQlite, add this line
  belongs_to :user, optional: true

  validates :name, :price, :color, :quantity, :size, :gender, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum alowed. "}
  validates :price, numericality: { only_integer:true }, length: { maximum: 7 }

  COLOR = %w{ Blanco Negro Rojo Azul Amarillo Verde Beige }
  SIZE = %w{ XS S M L XL }
  GENDER = %W{ Male Female }

end
