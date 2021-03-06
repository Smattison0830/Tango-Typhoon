class ListPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
        scope.where(user: user)
    end
  end

  def create?
    true
  end
  
  def show?
    true
  end

  def edit?
    record.user == user
  end

  def destroy?
    true
  end

  def update?
    record.user == user
  end
end
