json.id @list.id

#json.movies @list.movies

json.movies @list.movies do |movie|
    json.extract! movie, :id, :title, :description, :year, :duration, :maturity_rating, :director, :cast, :genre_id
    json.trailer Trailer.find_by(movie_id: movie&.id).present? ? Trailer.find_by(movie_id: movie&.id)&.url : "" 
    json.thumbnail Thumbnail.find_by(movie_id: movie&.id).present? ? Trailer.find_by(movie_id: movie&.id)&.url : ""
    json.logo Logo.find_by(movie_id: movie&.id).present? ? Trailer.find_by(movie_id: movie&.id)&.url : ""
end


json.movie_associations @list.movie_associations