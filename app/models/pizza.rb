class Pizza < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :name, :price, :description, :restaurant_id

  validates :name, :price, :description, :restaurant_id, presence: true
end
