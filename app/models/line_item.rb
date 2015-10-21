class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  def total_price
    if I18n.locale.to_s.downcase == 'es'
      product.price * quantity * 2
    else
      product.price * quantity
    end
  end
end
