# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.references :category, null: false, foreign_key: true
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
