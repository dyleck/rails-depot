class MoveProductPriceToLineItems < ActiveRecord::Migration
  def up
    LineItem.all.each do |line_item|
      price = line_item.product.price
      line_item.price = price
      line_item.save!
    end
  end

  def down
    LineItem.all.each do |line_item|
      line_item.price = nil
      line_item.save!
    end
  end
end