class Product < ApplicationRecord
  validates :name,:quantity,:product_category, :presence => true

  belongs_to :product_category

end
