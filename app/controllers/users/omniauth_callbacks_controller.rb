module Users
  class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def instagram
      generic_callback('instagram')
    end

    def facebook
      generic_callback('facebook')
    end

    def twitter
      generic_callback('twitter')
    end

    def google_oauth2
      generic_callback('google_oauth2')
    end

    def github
      generic_callback('github')
    end

    def generic_callback(provider)
      user = FindOrCreateWithOauth.call(env["omniauth.auth"])
      if user.persisted?
        sign_in_and_redirect user, event: :authentication
        set_flash_message(:notice, :success, kind: provider.capitalize) if is_navigational_format?
      else
        session["devise.#{provider}_data"] = env["omniauth.auth"]
        redirect_to new_user_registration_url
      end
    end
  end
end
