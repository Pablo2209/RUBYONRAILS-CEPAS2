class Winemaker < ApplicationRecord
    /WINEMAKER AND MAGAZINE/
    /asociacion con la tabla intermedia/
    has_many :winemakers_magazines, dependent: :destroy

    /asociacion con ingredients a travez de la tabla intermedia/
    has_many :magazines, through: :winemakers_magazines

    /Para disponer del formulario de ingredient y la tabla intermedia/
    accepts_nested_attributes_for :magazines, :winemakers_magazines, allow_destroy: true

    /WINEMAKER AND WINE/
    /asociacion con la tabla intermedia/
    has_many :winemakers_wines, dependent: :destroy

    /asociacion con ingredients a travez de la tabla intermedia/
    has_many :wines, through: :winemakers_wines

    /Para disponer del formulario de ingredient y la tabla intermedia/
    accepts_nested_attributes_for :wines, :winemakers_wines, allow_destroy: true

end
