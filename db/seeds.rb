# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.first || User.create(
  email: 'admin@remitano.com',
  password: '@remitano.com',
  name: 'Remitano'
)

movies = [
  {
    title: 'First movie',
    youtube_url: 'https://www.youtube.com/watch?v=2AUmvWm5ZDQ',
    description: 'Just the first movie'
  },
  {
    title: 'Second movie',
    youtube_url: 'https://www.youtube.com/watch?v=XGk2EfbD_Ps',
    description: 'Another movie'
  },
  {
    title: 'Third movie',
    youtube_url: 'https://www.youtube.com/watch?v=pU8-7BX9uxs',
    description: 'And another one'
  }
]
movies.each do |movie_hash|
  m = Movie.create(movie_hash.merge(creator: user))
  MovieRating.create(user: user, movie: m, like: true)
end
