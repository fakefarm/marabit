$ ->
  races = $('#rush-container')

  _.each(races.children(), (race)->
    new Rush($(race))
  )


# One of first problems I see with this approach is that the JS will break when the DOM is refactored.
class @Rush
  constructor: (race)->
    # variables
    @race = race
    @race_id = @race.data('id')
    @id = @race.attr('id')
    @standings = race.find('.rush-standings')
    @standingsBtn = @race.find('.standing-area')
    @update = race.find('.rush-update')
    @updateBtn = @race.find('.update-area')
    $allStandings = $('.rush-standings')
    $allupdates = $('.rush-update')


    # setup classes
    @race.find('.rush-standings').addClass('animated flipInX')
    @race.find('.rush-update').addClass('animated flipInX')

    # setup buttons
    @standingsBtn.click =>
      _clearAll()
      @standings.toggle()


    @updateBtn.click =>
      _clearAll()
      @update.toggle()

    _clearAll = ->
      $allStandings.hide()
      $allupdates.hide()
