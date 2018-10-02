module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Loopie Laundry"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  # Returns the Gravatar for the given user.
  def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.firstname, class: "gravatar")
  end
end
