module UsersHelper
  def avatar_url(email, size = 30)
    gravatar_id = Digest::MD5.hexdigest(email).downcase
    gravatar_options = {
      s: size,
      d: "retro"
    }

    "https://www.gravatar.com/avatar/#{gravatar_id}?#{gravatar_options.to_param}"
  end
end
