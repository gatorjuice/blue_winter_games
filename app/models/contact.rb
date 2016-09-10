class Contact < ActiveRecord::Base
  has_many :playtests
  has_many :games, through: :playtests

  validates :firstname, :lastname, :email, :birth_year, presence: true
end
