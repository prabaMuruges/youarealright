# frozen_string_literal: true

class UserController < ApplicationController
  before_action :load_user, only: %i[show update destroy]

  def show

  end

  def update

  end

  def destroy

  end

  private

  def load_user
    @user = policy_scope(User).find(params[:id])
  end
end
