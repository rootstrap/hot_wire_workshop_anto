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
require 'rails_helper'

RSpec.describe Product do
  pending "add some examples to (or delete) #{__FILE__}"
end
