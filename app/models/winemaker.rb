class Winemaker < ApplicationRecord
    /asociacion con la tabla intermedia/
    has_many :winemakers_magazines, dependent: :destroy

    /asociacion con ingredients a travez de la tabla intermedia/
    has_many :magazines, through: :winemakers_magazines

    /Para disponer del formulario de ingredient y la tabla intermedia/
    accepts_nested_attributes_for :magazines, :winemakers_magazines, allow_destroy: true

end
