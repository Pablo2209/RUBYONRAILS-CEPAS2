class CreateWinemakersWines < ActiveRecord::Migration[5.2]
  def change
    create_table :winemakers_wines do |t|
      t.references :winemaker, foreign_key: true
      t.references :wine, foreign_key: true
      t.integer :qualification

      t.timestamps
    end
  end
end
