class WordPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @words = Word.find([:list_id])
      
      scope.where(word: word)
    end
  end

  def create?
    true
  end

  def edit?
    true
  end

  def destroy?
    true
  end

  def update?
    true
  end
end
