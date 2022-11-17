class UserPolicy < ApplicationPolicy
  class Scope < Scope
  end

  def dashboard?
    true
  end

  def update?
    record == user
  end
end
