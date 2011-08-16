module VotesHelper 
  
  # Get all places nominated for the current round
  def get_nominations
    nominations = Nomination.where(:round_id => current_round).order("place_id ASC")
  end
  
end
