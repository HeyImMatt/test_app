module ApplicationHelper

#Found the following to make the navbar recognize which page is active:
#http://stackoverflow.com/questions/17481812/dynamically-add-active-class-to-bootstrap-li-in-rails

  def is_active?(link_path)
    current_page?(link_path) ? "active" : ""
  end

  def gravatar_for(user, options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: 'img-circle')
  end

end
