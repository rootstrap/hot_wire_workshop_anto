# frozen_string_literal: true

# == Schema Information
#
# Table name: shipping_addresses
#
#  id          :bigint           not null, primary key
#  country     :string
#  city        :string
#  state       :string
#  line1       :string
#  line2       :string
#  postal_code :string
#  order_id    :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_shipping_addresses_on_order_id  (order_id)
#
class ShippingAddress < ApplicationRecord
  belongs_to :order
end
