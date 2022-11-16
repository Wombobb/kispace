class UserPolicy < ApplicationPolicy
  class Scope < Scope
  end
  def dashboard?
    # user == record.user
    true
  end
end
