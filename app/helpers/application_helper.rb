module ApplicationHelper
  def avatar_url(user)
    default_url = "#{root_url}images/guest.png"
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"
  end

  def get_sitename(url)
    url.scan(/https?:\/\/[www.]?(.*\.[a-z]*)/)[0][0].to_s
  end
end
