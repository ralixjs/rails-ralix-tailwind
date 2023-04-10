class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    omniauth_callback('Google', 'google_data')
  end

  def github
    omniauth_callback('GitHub', 'github_data')
  end

  def facebook
    omniauth_callback('Facebook', 'facebook_data')
  end

  private

  def omniauth_callback(kind, session_key)
    @user = User.from_omniauth(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: kind
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.#{session_key}"] = request.env['omniauth.auth'].except('extra') # Removing extra as it can overflow some session stores
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end
end
