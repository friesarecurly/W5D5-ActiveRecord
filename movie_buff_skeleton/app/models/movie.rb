class Movie < ApplicationRecord
  belongs_to :director,
    class_name: :Actor,
    foreign_key: :director_id,
    primary_key: :id

  has_many :castings,
    class_name: :Casting,
    foreign_key: :movie_id,
    primary_key: :id

  has_many :actors,
    through: :castings,
    source: :actor

  # def biggest_cast
  #   Movie
  #     .select(:id, :title)
  #     .joins(:actors)
  #     .group('movies.id')
  #     .order('COUNT(actors.id) DESC')
  #     .limit(3)
  # end
end
