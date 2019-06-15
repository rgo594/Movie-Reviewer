class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :avg_score
      t.string :movie_img

      t.timestamps
    end
  end
end
