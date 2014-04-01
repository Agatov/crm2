$ ->

  $('.comment-form').on 'submit', ->
    $.post(
      $(@).attr('action'),
      $(@).serialize(),
      (data) =>
        $('#comments').prepend(data)
    )
