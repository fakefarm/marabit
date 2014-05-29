$ ->
  $('.rush-standings, .rush-update').hide()

  $('.big-link a').click (e) ->
    e.preventDefault()

  $('.standing-area').click ->
    $('.rush-standings').toggle()

  $('.update-area').click ->
    $('.rush-update').toggle()
