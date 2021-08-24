module TournamentHelper

  def tournament_players(tournament_id)
    tournament = Tournament.find(tournament_id)
    a = tournament.teams.pluck(:id)
    Player.where(team_id: a)
  end
end