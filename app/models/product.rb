class Product < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :order_items

  validates :name, :description, :price, :image, :origin, :variety, presence: true
end
