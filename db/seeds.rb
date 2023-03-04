# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all
Genre.destroy_all
Movie.destroy_all
Profile.destroy_all
List.destroy_all
ListMovie.destroy_all

# USERS

demouser = User.create!({email: "demouser@gmail.com", password: "password321"})

user1 = User.create!({email: "user1@gmail.com", password: "password123"})
user2 = User.create!({email: "user2@gmail.com", password: "password123"})
user3 = User.create!({email: "user3@gmail.com", password: "password123"})

#GENRES

adventure = Genre.create!({name: "Gustavo Lima"})
reallife = Genre.create!({name: "Eduardo Costa"})
classics = Genre.create!({name: "Leonardo"})
starwars = Genre.create!({name: "Mc Pose do Rodo"})
comedy = Genre.create!({name: "Comedy"})
scifi = Genre.create!({name: "Sci-Fi"})

# MOVIES

# Adventure
movie1 = Movie.create!({
    title: "Gusttavo Lima - 1",
    description: "Show ao vivo do Embaixador em Boston",
    year: 2022,
    duration: "2m 54s",
    maturity_rating: "PG-13",
    director: "Som Livre",
    cast: "Gustavo Lima, Som Livre",
    genre_id: adventure.id
})

Trailer.create!({url: "http://localhost:3001/video1.mp4", movie_id: movie1.id})
Thumbnail.create!({url: "http://localhost:3001/video1.png", movie_id: movie1.id})
Logo.create!({url: "http://localhost:3001/video1.png", movie_id: movie1.id})

# Adventure
movie4 = Movie.create!({
    title: "Gusttavo Lima - 2",
    description: "Show ao vivo do Embaixador em Boston",
    year: 2022,
    duration: "2m 54s",
    maturity_rating: "PG-13",
    director: "Som Livre",
    cast: "Gustavo Lima, Som Livre",
    genre_id: adventure.id
})

Trailer.create!({url: "http://localhost:3001/video2.mp4", movie_id: movie4.id})
Thumbnail.create!({url: "http://localhost:3001/video2.png", movie_id: movie4.id})
Logo.create!({url: "http://localhost:3001/video4.png", movie_id: movie4.id})

movie5 = Movie.create!({
    title: "Gusttavo Lima - 3",
    description: "Show ao vivo do Embaixador em Boston",
    year: 2022,
    duration: "2m 54s",
    maturity_rating: "PG-13",
    director: "Som Livre",
    cast: "Gustavo Lima, Som Livre",
    genre_id: adventure.id
})

Trailer.create!({url: "http://localhost:3001/video3.mp4", movie_id: movie5.id})
Thumbnail.create!({url: "http://localhost:3001/video3.png", movie_id: movie5.id})
Logo.create!({url: "http://localhost:3001/video1.png", movie_id: movie5.id})


# Adventure
movie2 = Movie.create!({
    title: "Eduardo Costa",
    description: "Show ao vivo do Embaixador em Boston",
    year: 2022,
    duration: "2m 54s",
    maturity_rating: "PG-13",
    director: "Som Livre",
    cast: "Gustavo Lima, Som Livre",
    genre_id: reallife.id
})

Trailer.create!({url: "http://localhost:3001/video4.mp4", movie_id: movie2.id})
Thumbnail.create!({url: "http://localhost:3001/video4.png", movie_id: movie2.id})
Logo.create!({url: "http://localhost:3001/video2.png", movie_id: movie2.id})

# Adventure
movie3 = Movie.create!({
    title: "Leonardo",
    description: "Show ao vivo do Embaixador em Boston",
    year: 2022,
    duration: "2m 54s",
    maturity_rating: "PG-13",
    director: "Som Livre",
    cast: "Gustavo Lima, Som Livre",
    genre_id: classics.id
})

Trailer.create!({url: "http://localhost:3001/video5.mp4", movie_id: movie3.id})
Thumbnail.create!({url: "http://localhost:3001/video5.png", movie_id: movie3.id})
Logo.create!({url: "http://localhost:3001/video3.png", movie_id: movie3.id})
