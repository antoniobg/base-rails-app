module Users::Identities
  class FindByOauth < ApplicationService
    def call(oauth)
      Identity.find_by(provider: oauth.provider, uid: oauth.uid)
    end
  end
end
