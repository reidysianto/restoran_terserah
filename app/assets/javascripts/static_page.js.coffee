# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
  $(document).ready ->
    $('.carousel').carousel
      interval: 4000
    prev= ->
      $('.carousel').carousel('prev')
    next= ->
      $('.carousel').carousel('next')