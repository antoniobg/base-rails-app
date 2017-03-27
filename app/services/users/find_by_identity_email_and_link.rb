module Users
  class FindByIdentityEmailAndLink < ApplicationService
    def call(identity)
      user = User.find_by(email: identity.email)
      identity.update_attribute(:user_id, user.id) if user.present?

      user
    end
  end
end
