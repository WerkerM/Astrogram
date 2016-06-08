$(document).on('ready', function() {
  updateFollows()
})

function updateFollows() {
  $('.follow[data-astronaut-id]').on('click', function(event) {
    event.preventDefault
    event.stopPropagation
    var astronaut_id = $('.follow').attr('data-astronaut-id')
    var path = '/follows'
    console.log(path)
    $.ajax ({
      type: 'POST',
      url: path,
      data: {follow: {astronaut_id: astronaut_id}}
    }).done(showFollow)
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
