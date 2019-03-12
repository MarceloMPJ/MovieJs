class AddYoutubeIdToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :youtube_id, :string
  end
end
