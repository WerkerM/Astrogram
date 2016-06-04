module PostHelper
  def video_embed_code(post)
    unless post.video_url.empty?
      "<iframe width='560' height='315' src='https://www.youtube.com/embed/" +
       self.video_id(post) + "?autoplay=1' frameborder='0' allowfullscreen></iframe>"
    end
  end
  
  def video_id(post)
    post.video_url.gsub("https://www.youtube.com/watch?v=", "")
  end
end
