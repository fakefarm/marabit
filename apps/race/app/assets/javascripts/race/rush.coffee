$ ->
  $('.rush-standings, .rush-update').hide()

  $('.big-link a').click (e) ->
    e.preventDefault()
    # $('[data-content=area]').hide()

  $('.standing-area .big-link a').click ->
    $('.rush-standings').toggle()

  $('.update-area .big-link a').click ->
    $('.rush-update').toggle()
