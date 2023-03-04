class CreateTrailers < ActiveRecord::Migration[5.2]
  def change
    create_table :trailers do |t|
      t.string :url, null: false

      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
