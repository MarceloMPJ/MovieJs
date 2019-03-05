class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :main_genre
      t.integer :release_year
      t.string :description
      t.string :director

      t.timestamps
    end
  end
end
