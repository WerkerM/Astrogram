$(document).ready(function() {
  inputHandler()
})

function inputHandler() {
  $('#post_image_url').on('keyup', function(event) {
    if (event.keyCode == 86) {
      var imageUrl = $('#post_image_url').val()
      $('media-preview').html('')
      $('.media-preview').html('<img src=' + imageUrl + '>')
      $('#post_video_url').hide()
    }
    if (event.keyCode == 8) {
      if ($('#post_image_url').val() == "") {
        $('.media-preview').html('')
        $('#post_video_url').show()
      }
    }
  })

  $('#post_video_url').on('keyup', function(event) {
    if (event.keyCode == 86) {
      var videoUrl = $('#post_video_url').val()
      var videoId = parseVideoUrl(videoUrl)
      $('media-preview').html('')
      $('.media-preview').html("<iframe width='560' height='315' src='https://www.youtube.com/embed/" + videoId + "?autoplay=1&enablejsapi=1' frameborder='0' allowfullscreen></iframe>")
      $('#post_image_url').hide()
    }
    if (event.keyCode == 8) {
      if ($('#post_video_url').val() == "") {
        $('.media-preview').html('')
        $('#post_image_url').show()
      }
    }
  })
}

function parseVideoUrl(videoUrl) {
  var id = videoUrl.replace("https://www.youtube.com/watch?v=", "")
  return id
}
