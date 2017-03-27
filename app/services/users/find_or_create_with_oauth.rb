module Users
  class FindOrCreateWithOauth < ApplicationService
    def call(oauth)
      identity = Identities::FindByOauth.call(oauth) || Identities::CreateByOauth.call(oauth)

      FindByIdentity.call(identity) || FindByIdentityEmailAndLink.call(identity) || CreateByIdentity.call(identity)
    end
  end
end
