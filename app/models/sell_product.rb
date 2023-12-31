class SellProduct < ApplicationRecord
  validates :name,length: {minimum: 2}
  validates :price,presence: true, :numericality => true
  validates :description,presence: true,length: {minimum: 10}
  validates :image,presence: true
  belongs_to :user
  belongs_to :category
  before_save :set_unique_id
  has_one_attached :image

  enum status: {available: "available", sold:"sold"}

  def set_unique_id
    id = SecureRandom.hex[0..7]
    products = SellProduct.all
    products.each do |product|
      if product.alphanumeric_id == id
        set_unique_id
      end
    end
    self.alphanumeric_id = id
  end
end
