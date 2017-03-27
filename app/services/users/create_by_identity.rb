module Users
  class CreateByIdentity < ApplicationService
    def call(identity)
      ApplicationRecord.transaction do
        user = User.create!(
          email: identity.email,
          first_name: identity.first_name,
          last_name: identity.last_name,
          profile_picture: identity.profile_picture,
          password: password,
          password_confirmation: password
        )
        user.confirm
        identity.update_attribute(:user_id, user.id)

        user
      end
    end

    private

    def password
      @password ||= Devise.friendly_token.first(8)
    end
  end
end
