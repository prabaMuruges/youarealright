# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :create_user, :skip_authorization, only: :create
  before_action :load_user, only: %i[show update destroy]

  def create
    render :show
  end

  def show; end

  def update

  end

  def destroy

  end

  private

  def load_user
    @user = policy_scope(User).find(params[:id])
    authorize @user
  end

  def create_user
    @user = User.create(permitted_params)
  end

  def permitted_params
    params.require(:user).permit(policy(User).permitted_attributes)
  end
end
