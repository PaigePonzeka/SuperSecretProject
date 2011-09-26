$(document).ready ->
  if current_controller == 'votes'

    $(".add_vote").click ->
      changeVote(1, $(this).parent().closest("tr").find("#vote_tally"))
      false

    $(".remove_vote").click ->
      changeVote(-1, $(this).parent().closest("tr").find("#vote_tally"))
      false

# removes or add votes to the given input box
changeVote =(num, container) ->
  container.val( parseInt(container.val()) + num)
