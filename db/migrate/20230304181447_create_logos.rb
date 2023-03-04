class CreateLogos < ActiveRecord::Migration[5.2]
  def change
    create_table :logos do |t|
      t.string :url, null: false

      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
