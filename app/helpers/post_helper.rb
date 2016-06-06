module PostHelper

  def render_post_form
    render 'posts/form'
  end

  def render_image(post)
    if post.image_url.present?
      image_tag(post.image_url)
    end
  end

  def render_video(post)
    if post.video_url.present?
      video_embed_code(post).html_safe
    end
  end

  def video_embed_code(post)
    "<iframe width='560' height='315' src='https://www.youtube.com/embed/" +
     self.video_id(post) + "?autoplay=1&enablejsapi=1' frameborder='0' allowfullscreen></iframe>"
  end

  def video_id(post)
    post.video_url.gsub("https://www.youtube.com/watch?v=", "")
  end

  def star_date(post)
    unless post.created_at.nil?
      post.created_at.to_datetime.jd.to_s
    end
  end
end
