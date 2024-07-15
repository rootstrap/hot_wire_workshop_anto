# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  unit_price  :decimal(, )
#  status      :integer
#  stock       :integer
#  category_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
class Product < ApplicationRecord
  enum status: { used: 0, brand_new: 1, other: 2 }
  belongs_to :category
  has_one_attached :picture
end
