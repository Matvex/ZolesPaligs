class Deal < ApplicationRecord

	belongs_to :game

  def points player_nr
    return nil if game.number_of_players != 4 && player_nr == 3
    
    is_solist = player_nr == solist_nr ? 1 : 0
    solist_win = win ? 1 : -1
    is_zole = zole ? 4 : 0
 
    small_points = - solist_win * (1 + (win ? 0 : 1) + severity + is_zole)
    big_points = - is_solist * (small_points * game.number_of_players)

    big_points + small_points
  end


end
