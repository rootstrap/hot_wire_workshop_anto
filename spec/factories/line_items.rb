# frozen_string_literal: true

# == Schema Information
#
# Table name: line_items
#
#  id               :bigint           not null, primary key
#  shopping_cart_id :bigint           not null
#  product_id       :bigint           not null
#  order_id         :bigint           not null
#  quantity         :integer
#  unit_price       :decimal(, )
#  total_price      :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_line_items_on_order_id          (order_id)
#  index_line_items_on_product_id        (product_id)
#  index_line_items_on_shopping_cart_id  (shopping_cart_id)
#
FactoryBot.define do
  factory :line_item do
    shopping_cart { nil }
    product { nil }
    order { nil }
    quantity { 1 }
    unit_price { '9.99' }
    total_price { '9.99' }
  end
end
