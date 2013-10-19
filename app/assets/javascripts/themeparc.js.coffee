$(document).ready ->

  $('.menu-toggle').click( ->
      $('ul.nav').slideToggle()
      return false
  )
