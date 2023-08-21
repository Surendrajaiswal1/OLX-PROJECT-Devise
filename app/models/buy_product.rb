class BuyProduct < ApplicationRecord
  belongs_to :user
  belongs_to :sell_product
  before_save :set_unique_id

  def set_unique_id
   id = SecureRandom.hex[0..7]
    products = BuyProduct.all
    products.each do |product|
      if product.order_id == id
        set_unique_id
      end
    end
    self.order_id = id
  end
end
