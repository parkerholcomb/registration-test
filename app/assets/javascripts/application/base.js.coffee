$(document).on 'ready page:load', () ->

  $("#checkout").click (e) ->
    btn = $(this)
    btn.toggleClass('disabled')
    $.ajax
      method: 'POST'
      url: 'process-card'
      data:
        $("#payment-form").serialize()
    .always (data) ->
      btn.toggleClass('disabled')
    .then (data)->
      # submits the form if processing the card is a success
      # (which will happen as long as a number was in params)
      $("#new_request").get(0).submit()
    .fail (data) ->
      console.log(data)
      # TODO_2 display a flash message
      # hint: see 'layouts/application.html.haml'
