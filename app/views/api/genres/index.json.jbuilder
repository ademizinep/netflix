@genres.each do |genre|
    json.key_format! ->(key){ key[0].upcase + key.slice(1..-1) }
    json.set! genre.name do 
        genre.movies.each do |movie|
            json.key_format! ->(key){ key }
            json.set! movie.title do
                json.extract! movie, :id, :title, :description, :year, :duration, :maturity_rating, :director, :cast, :genre_id
                json.trailer Trailer.find_by(movie_id: movie&.id).present? ? Trailer.find_by(movie_id: movie&.id)&.url : "" 
                json.thumbnail Thumbnail.find_by(movie_id: movie&.id).present? ? Trailer.find_by(movie_id: movie&.id)&.url : ""
                json.logo Logo.find_by(movie_id: movie&.id).present? ? Trailer.find_by(movie_id: movie&.id)&.url : ""
            end
        end
    end
end
