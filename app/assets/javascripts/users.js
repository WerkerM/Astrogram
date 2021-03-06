$(document).on('ready', function() {
  updateFollows()
})

function updateFollows() {
  $('.follow-button[data-astronaut-id]').on('click', function(event) {
    var id = $(this).attr('data-astronaut-id')
    $.ajax ({
      type: 'POST',
      url: '/follows',
      data: {follow: {astronaut_id: id}}
    }).done(showFollow)
  })
}

function showFollow(response) {
  var status = response["status"]
  var id = response["astronaut_id"]
  toggleButton(status, id)
}

function toggleButton(status, id) {
  if (status === "following") {
    $('.follow-button[data-astronaut-id="' + id + '"]').text('following')
  }
  else {
    $('.follow-button[data-astronaut-id="' + id + '"]').text('+ follow')
  }
}
