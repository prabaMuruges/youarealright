# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      User
    end
  end

  def permitted_attributes
    %i[first_name last_name phone country_code email password]
  end

  def show?
    true
  end
end
