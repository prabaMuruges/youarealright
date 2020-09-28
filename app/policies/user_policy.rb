# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      User
    end
  end

  def show?
    user.partners.include?(record)
  end
end
