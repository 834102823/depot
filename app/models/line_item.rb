class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  attr_accessible :product
  attr_accessible :quantity
  attr_accessible :cart
  def total_price
    product.price * quantity
  end
end
