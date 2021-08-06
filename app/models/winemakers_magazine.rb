class WinemakersMagazine < ApplicationRecord
  /Relaciones con tablas/
  belongs_to :winemaker
  belongs_to :magazine
end
