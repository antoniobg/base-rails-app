module Users::Identities
  class CreateByOauth < ApplicationService
    def call(oauth)
      Identity.create!(
        uid: oauth.uid,
        provider: oauth.provider,
        access_token: oauth.credentials.token,
        refresh_token: oauth.credentials.refresh_token,
        email: oauth.info.email,
        profile_picture: oauth.info.image,
        nickname: oauth.info.nickname,
        first_name: oauth.info.first_name,
        last_name: oauth.info.last_name
      )
    end
  end
end
