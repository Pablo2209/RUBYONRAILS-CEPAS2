class Magazine < ApplicationRecord
    /asociacion con la tabla intermedia/
    has_many :winemakers_magazines, dependent: :destroy

    /asociacion con ingredients a travez de la tabla intermedia/
    has_many :winemakers, through: :winemakers_magazines

    /Para disponer del formulario de ingredient y la tabla intermedia/
    accepts_nested_attributes_for :winemakers, :winemakers_magazines, allow_destroy: true

end
