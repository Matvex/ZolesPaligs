class Game < ApplicationRecord

	MIN_NUMBER_OF_PLAYERS = 3.freeze

	belongs_to :user, dependent: :destroy
	has_many :deals, dependent: :destroy

	def number_of_players
    MIN_NUMBER_OF_PLAYERS + (four_players ? 1 : 0)
  end

	def scoresheet_points
		scoresheet_points = [Array.new(number_of_players, 0)]
		deals.each do |deal|
			deal_array = []
			number_of_players.times do |i|
				deal_array << scoresheet_points.last[i] + deal.points(i)
			end
			scoresheet_points << deal_array
		end
		scoresheet_points
	end
end
