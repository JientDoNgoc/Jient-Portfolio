ready = ->
  Typed.new '.blog-element',
    strings: [
      'Stop Dreaming about your Dreams.'
      "Start Learning, Coding, Developing. And"
      "Making your Dreams come True!"
    ]
    typeSpeed: 10
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready