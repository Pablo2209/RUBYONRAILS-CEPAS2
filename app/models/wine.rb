class Wine < ApplicationRecord
    /WINE AND STRAIN/
    /asociacion con la tabla intermedia/
    has_many :wines_strains, dependent: :destroy

    /asociacion con ingredients a travez de la tabla intermedia/
    has_many :strains, through: :wines_strains

    /Para disponer del formulario de ingredient y la tabla intermedia/
    accepts_nested_attributes_for :strains, :wines_strains, allow_destroy: true

    /WINE AND WINEMAKER/
    /asociacion con la tabla intermedia/
    has_many :winemakers_wines, dependent: :destroy

    /asociacion con ingredients a travez de la tabla intermedia/
    has_many :winemakers, through: :winemakers_wines

    /Para disponer del formulario de ingredient y la tabla intermedia/
    accepts_nested_attributes_for :winemakers, :winemakers_wines, allow_destroy: true

end
