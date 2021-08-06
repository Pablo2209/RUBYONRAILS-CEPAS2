class CreateWinemakersMagazines < ActiveRecord::Migration[5.2]
  def change
    create_table :winemakers_magazines do |t|
      t.references :winemaker, foreign_key: true
      t.references :magazine, foreign_key: true
      t.string :position

      t.timestamps
    end
  end
end
