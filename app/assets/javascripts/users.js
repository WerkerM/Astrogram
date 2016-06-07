$(document).on('ready', function() {
  updateFollows()
})

function updateFollows() {
  $('.follow-button').on('click', function(event) {
    event.preventDefault
    event.stopPropagation
    var astronaut_id = $('.follow').attr('astronaut_id')
    $.ajax ({
      type: 'POST',
      url: '/follows',
      data: {follow: {astronaut_id: astronaut_id}}
    }).done(function(response) {
      showFollow(response)
    })
  })
}

function showFollow(response) {
  var status = response["status"]
  if (status === "following") {
    $('.follow-button').text('following!')
  }
  else {
    $('.follow-button').text('+ follow')
  }
}
