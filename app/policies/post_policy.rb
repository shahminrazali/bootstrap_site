class PostPolicy < ApplicationPolicy

  def edit?
    user.present? && record.user_id == user.id || user_has_power?
  end
  
  def create?
    edit?
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end

  private

  def user_has_power?
    user.admin? || user.moderator?
  end

end
