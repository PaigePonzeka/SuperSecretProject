module VotesHelper

  # tallys all the votes for a given place
  def tally_votes
    place_list = Array.new()
    nominations = get_nominations
    # for each specific nomination get the total votes and push it to the array
    nominations.each do |nomination|
      place_votes = get_votes(nomination.place_id)
      place_list.push([nomination.place, place_votes ])
    end
    place_list

  end

  # gets all the votes for a given place based on id #TODO need to include round
  def get_votes(place_id)
    votes = Vote.where(:place_id => place_id)
    total_votes = 0
    votes.each do |vote|
      if vote.tally
        total_votes += vote.tally
      end
    end
    total_votes
  end



end
