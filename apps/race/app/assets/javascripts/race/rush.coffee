$ ->
  races = $('#rush-container')

  _.each(races.children(), (race)->
    new Rush($(race))
  )



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

    # setup classes
    @race.find('.rush-standings').addClass('animated flipInX')
    @race.find('.rush-update').addClass('animated flipInX')

    # setup buttons
    @standingsBtn.click =>
      @update.hide()
      @standings.toggle()
    @updateBtn.click =>
      @standings.hide()
      @update.toggle()

