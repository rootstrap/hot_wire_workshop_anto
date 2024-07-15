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
FactoryBot.define do
  factory :product do
    name { 'MyString' }
    description { 'MyText' }
    unit_price { '9.99' }
    status { 1 }
    stock { 1 }
    category { nil }
    picture { nil }
  end
end
