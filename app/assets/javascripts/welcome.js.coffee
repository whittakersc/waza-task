# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $(document).ready ->
# 	$(".main").onepage_scroll
# 	  sectionContainer: "section" # sectionContainer accepts any kind of selector in case you don't want to use section
# 	  easing: "ease" # Easing options accepts the CSS3 easing animation such "ease", "linear", "ease-in", "ease-out", "ease-in-out", or even cubic bezier value such as "cubic-bezier(0.175, 0.885, 0.420, 1.310)"
# 	  animationTime: 1000 # AnimationTime let you define how long each section takes to animate
# 	  pagination: true # You can either show or hide the pagination. Toggle true for show, false for hide.
# 	  updateURL: false # Toggle this true if you want the URL to be updated automatically when the user scroll to each page.
# 	  beforeMove: (index) -> # This option accepts a callback function. The function will be called before the page moves.

# 	  afterMove: (index) -> # This option accepts a callback function. The function will be called after the page moves.

# 	  loop: false # You can have the page loop back to the top/bottom when the user navigates at up/down on the first/last page.
# 	  responsiveFallback: false # You can fallback to normal page scroll by defining the width of the browser in which you want the responsive fallback to be triggered. For example, set this to 600 and whenever the browser's width is less than 600, the fallback will kick in.


ready_function = ->
  $.fn.fullpage anchors: ["firstPage", "secondPage"]
  
  $("#new_task").popover
    id: "new_task"
    title: "New Task"
    contents: $('#new_task .contents').html()
    disableHeader:      false

  $("#add_event").popover
    id: "add_event"
    title: "Add Event"
    contents: $('#add_event .contents').html()
    disableHeader:      false
  
  $("#chat").popover
    id: "chat"
    title: "Start Chatting"
    contents: $('#chat .contents').html()
    disableHeader:      false
  
  $("#all_apps").popover
    id: "all_apps"
    title: "All Apps"
    contents: $('#all_apps .contents').html()
    disableHeader:      false

  $(".popover").on 'click', (e)->
  	$('.ui-tooltip').hide()
  	e.preventDefault()

$(document).ready ready_function
$(document).on 'page:load', ready_function