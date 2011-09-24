$(document).ready ->
  # Set global vars for the current controller and action name.
  [window.current_controller, window.current_action] = $('body').attr('id').split('-')