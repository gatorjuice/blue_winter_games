class Game < ActiveRecord::Base
  has_many :playtests
  has_many :contacts, through: :playtests
  has_many :game_genres
  has_many :genres, through: :game_genres
end
