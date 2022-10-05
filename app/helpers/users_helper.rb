module UsersHelper
  def avatar(user, size = 40)
    image_tag avatar_url(user, size),
      size: size,
      class: "rounded-full"
  end

  def avatar_url(user, size)
    if user.avatar.attached?
      url_for(user.avatar)
    else
      gravatar_url(user.email, size)
    end
  end

  def gravatar_url(email, size)
    gravatar_id = Digest::MD5.hexdigest(email).downcase
    gravatar_options = {
      s: size,
      d: "retro"
    }

    "https://www.gravatar.com/avatar/#{gravatar_id}?#{gravatar_options.to_param}"
  end
end
