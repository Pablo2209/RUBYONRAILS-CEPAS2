class WinesStrain < ApplicationRecord
  /Relaciones con tablas/
  belongs_to :wine
  belongs_to :strain
end
