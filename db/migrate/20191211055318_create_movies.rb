class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.text :movie_title
      t.text :caption
      t.integer :user_id

      t.timestamps
    end
  end
end
