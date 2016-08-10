class CommentPolicy < ApplicationPolicy

  def edit?
    user.present? && record.user_id == user.id || user_has_power?
  end

  private

  def user_has_power?
    user.admin? || user.moderator?
  end

end
