# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :skip_authorization, :skip_policy_scope, only: :index

  def index
    if params[:q].present?
      @pagy, @products = pagy(Product.where('name LIKE ?', "%#{params[:q]}%"))
    else
      query = Product.order(id: :desc)
      @pagy, @products = pagy(query, items: 3)
    end
  end
end
