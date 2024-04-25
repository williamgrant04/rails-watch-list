class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.references :movies, foreign_key: true
      t.references :lists, foreign_key: true

      t.timestamps
    end
  end
end
