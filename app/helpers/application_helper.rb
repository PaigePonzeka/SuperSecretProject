module ApplicationHelper

  def group_name(id)
    Group.find(id).name
  end

  def group(id)
    Group.find(id)
  end

  def place_name(id)
    Place.find(id).name
  end

  def place(id)
    Place.find(id)
  end

  def new_place
    params[:new_place]
  end

  def current_group_name
     Group.find(current_group).name
  end

  def current_group
    session[:previous_group]
  end

  def current_round
    session[:current_round]
  end

  def current_round_name
    Round.find(current_round).name
  end

  # Get all places nominated for the current round
  def get_nominations
    nominations = Nomination.where(:round_id => current_round).order("place_id ASC").select("DISTINCT(place_id)")
  end

end