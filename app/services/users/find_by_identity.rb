module Users
  class FindByIdentity < ApplicationService
    def call(identity)
      User.joins(:identities).find_by(identities: { id: identity.id })
    end
  end
end
