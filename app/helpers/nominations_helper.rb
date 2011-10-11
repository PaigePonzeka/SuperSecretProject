module NominationsHelper

  # returns an array of previously nominated places
  def previousNominations
    nominations= Nomination.where(:user_id => current_user).order("place_id ASC").select("DISTINCT(place_id)")
  end

  # when a new place is added to the database
  def addPlace
    params[:new_place]
  end
end
