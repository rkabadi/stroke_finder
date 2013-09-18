# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  hands = $('#player_stroke_attributes_0_hand_id').html();
  grips = $('#stroke_grip_id').html();
  spins = $('#stroke_spin_id').html();
  console.log(hands)
  $('#player_attributes_0_shot_id').change ->
    shot = $('#player_attributes_0_shot_id :selected').text()
    console.log(shot)
    #escaped_shot = shot.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    hand_options = $(hands).filter("optgroup[label='#{shot}']").html()
    grip_options = $(grips).filter("optgroup[label='#{shot}']").html()
    spin_options = $(spins).filter("optgroup[label='#{shot}']").html()
    #console.log(hand_options)
    if hand_options
      $('#stroke_hand_id').html(hand_options)
      $('#stroke_hand_id').parent().show()
    else
      $('#stroke_hand_id').empty()
      $('#stroke_hand_id').parent().hide()
    if grip_options
      $('#stroke_grip_id').html(grip_options)
      $('#stroke_grip_id').parent().show()
    else
      $('#stroke_grip_id').empty()
      $('#stroke_grip_id').parent().hide()
    if spin_options
      $('#stroke_spin_id').html(spin_options)
      $('#stroke_spin_id').parent().show()
    else
      $('#stroke_spin_id').empty()
      $('#stroke_spin_id').parent().hide()