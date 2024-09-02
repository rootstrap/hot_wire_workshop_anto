# frozen_string_literal: true

class HomePageController < ApplicationController
  before_action :skip_authorization, :skip_policy_scope

  def index; end
end
