movies = [
  { title: 'The Shawshank Redemption', rating: 'R',     release_date: '1994-09-23', description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.' },
  { title: 'The Godfather',            rating: 'R',     release_date: '1972-03-24', description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.' },
  { title: 'The Dark Knight',          rating: 'PG-13', release_date: '2008-07-18', description: 'When the menace known as the Joker wreaks havoc on Gotham City, Batman must accept one of the greatest psychological and physical tests.' },
  { title: 'Schindler\'s List',        rating: 'R',     release_date: '1993-12-15', description: 'In German-occupied Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce.' },
  { title: 'Pulp Fiction',             rating: 'R',     release_date: '1994-10-14', description: 'The lives of two mob hitmen, a boxer, a gangster and his wife intertwine in four tales of violence and redemption.' },
  { title: 'Forrest Gump',             rating: 'PG-13', release_date: '1994-07-06', description: 'The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other historical events unfold through the perspective of an Alabama man.' },
  { title: 'Inception',                rating: 'PG-13', release_date: '2010-07-16', description: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea.' },
  { title: 'The Lion King',            rating: 'G',     release_date: '1994-06-24', description: 'Lion prince Simba and his father are targeted by his uncle, who wants to ascend the throne himself.' },
  { title: 'Goodfellas',               rating: 'R',     release_date: '1990-09-19', description: 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners.' },
  { title: 'The Silence of the Lambs', rating: 'R',     release_date: '1991-02-14', description: 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer.' },
  { title: 'Toy Story',                rating: 'G',     release_date: '1995-11-22', description: 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.' },
  { title: 'Raiders of the Lost Ark',  rating: 'PG',    release_date: '1981-06-12', description: 'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant.' },
]

movies.each do |attrs|
  Movie.find_or_create_by!(title: attrs[:title]) do |m|
    m.rating       = attrs[:rating]
    m.release_date = attrs[:release_date]
    m.description  = attrs[:description]
  end
end

puts "Seeded #{Movie.count} movies."
