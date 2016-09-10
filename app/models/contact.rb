class Contact < ActiveRecord::Base
  has_many :playtests
  has_many :games, through: :playtests

end
