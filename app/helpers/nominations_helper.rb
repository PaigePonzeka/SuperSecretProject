module NominationsHelper

# returns an array of previously nominated places
def previousNominations
  # TODO remove duplicates and return
 nominations= Nomination.where(:user_id => current_user).order("place_id ASC").select("DISTINCT(place_id)")

end
def addPlace
  params[:new_place]
end
def addPlaceName
  place = Place.find(addPlace)
  place.name
end
end
