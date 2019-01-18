actor = Actor.new(first_name: "Will", last_name: "Smith", known_for: "Bad Boys")
actor.save

movie = Movie.new(title: "Black Panther", year: 2018, plot: "After the death of his father, T'Challa returns home to the African nation of Wakanda to take his rightful place as king.")
movie.save

movie = Movie.new(title: "Spiderman: Far From Home", year: 2019, plot: "Spider-Man teams up with Nick Fury to prevent the evil Mysterio from destroying Europe.")
movie.save