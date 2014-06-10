$ ->

  $('.status-widget').on 'click', ->
    console.log $(@).offset().top

    $('.dropdown-menu').css('top', $(@).offset().top + $(@).height() + 3)
    $('.dropdown-menu').css('left', $(@).offset().left)




    $('.dropdown-menu').show()
#
#    $('body').on 'click', ->
#      hide_dropdown_menu()





window.hide_dropdown_menu = ->
  $('.dropdown-menu').hide()