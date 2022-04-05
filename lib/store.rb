class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :min_product

  def min_product
    if !mens_apparel && !womens_apparel
      errors.add(:min_product, "Stores must have at least one of mens or womens apparel")
    end
  end

end
