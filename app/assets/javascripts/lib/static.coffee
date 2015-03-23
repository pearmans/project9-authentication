# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  wall = new freewall '#freewall'

  wall.reset
    selector: '.brick'
    animate: true
    cellW: 200
    cellH: 'auto'
    gutterY: 10
    gutterX: 10
    onResize: ->
      wall.fitWidth()

  images = wall.container.find '.brick'
  length = images.length
  images.css
    visibility: 'hidden'
  images.find('img').load ->
    --length
    if !length
      setTimeout ->
        $('.freewall-loading').remove()
        images.css
          visibility: 'visible'
        wall.fitWidth()
        setTimeout ->
          wall.fitWidth()


  # wall.reset
  #   selector: '.brick'
  #   animate: true
  #   cellW: 200
  #   cellH: 'auto'
  #   gutterX: 0
  #   gutterY: 0
  #   onResize: ->
  #     wall.fitWidth()

  # wall.container.find('.brick img').load ->
  #   wall.fitWidth()
