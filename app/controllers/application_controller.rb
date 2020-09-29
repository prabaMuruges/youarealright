# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Pundit

  after_action :verify_authorized

  def current_user; end
end
