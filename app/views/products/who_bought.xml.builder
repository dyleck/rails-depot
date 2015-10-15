xml.orders do
  @product.orders.each do |order|
    xml.order do
      xml.id order.id
      xml.name order.name
      xml.address order.address
      xml.value order.line_items.to_a.sum { |item| item.total_price }
    end
  end
end
