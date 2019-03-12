class AddPhotoUrlToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :photo_url, :string
  end
end
