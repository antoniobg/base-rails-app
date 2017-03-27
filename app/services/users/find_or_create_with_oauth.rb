module Users
  class FindOrCreateWithOauth < ApplicationService
    def call(oauth)
      binding.pry
      identity = Identities::FindByOauth.call(oauth) || Identities::CreateByOauth.call(oauth)

      FindByIdentity.call(identity) || FindByIdentityEmailAndLink.call(identity) || CreateByIdentity.call(identity)
    end
  end
end
