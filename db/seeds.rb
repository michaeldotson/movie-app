require 'ffaker'

10.times do 
actor = Actor.new(
  first_name: FFaker::Name.first_name, 
  last_name: FFaker::Name.last_name, 
  known_for: FFaker::Movie.title,
  gender: FFaker::Gender.random
  )
actor.save
end

10.times do 
movie = Movie.new(
  title: FFaker::Movie.title,
  director: FFaker::Name.name,
  year: FFaker::Vehicle.year,
  plot: FFaker::Lorem.sentences,
  english: true
  )
movie.save
end
