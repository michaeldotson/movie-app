class Movie < ApplicationRecord
  has_many :actors
  
  validates :title, :director, presence: true, length: { minimum: 2 }
  validates :year, numericality: { only_integer: true }
  validates :plot, presence: true, length: { maximum: 500 }

end
