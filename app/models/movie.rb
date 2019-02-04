class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  
  validates :title, :director, presence: true, length: { minimum: 2 }
  validates :year, numericality: { only_integer: true }
  validates :plot, presence: true, length: { maximum: 500 }


  def genre_names
    genre.map {|name| genre.name}
  end

end
