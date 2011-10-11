module ApplicationHelper
  def current_round
    session[:current_round]
  end

  # Get all places nominated for the current round
  def get_nominations
    nominations = Nomination.where(:round_id => current_round).order("place_id ASC").select("DISTINCT(place_id)")
  end

end