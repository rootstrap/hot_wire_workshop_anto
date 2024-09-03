# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :skip_authorization, :skip_policy_scope, only: :index

  def index
    query = Product.all

    query = query.where('name LIKE ?', "%#{params[:q]}%") if params[:q].present?

    query = query.where(status: params[:status]) if params[:status].present?

    query = query.order(id: :desc)
    @selected_status = params[:status]
    @pagy, @products = pagy(query, items: 3)
  end
end
