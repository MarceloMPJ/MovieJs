class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :main_genre, :release_year, :director, :description
end
