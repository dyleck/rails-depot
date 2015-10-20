class AddDefaultLocaleToProductsIfEmpty < ActiveRecord::Migration
  def up
    Product.all.each do |product|
      product.locale = 'en' if product.locale.nil?
      product.save
    end
  end

  def down
  end
end
