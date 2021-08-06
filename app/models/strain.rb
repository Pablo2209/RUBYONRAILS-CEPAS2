class Strain < ApplicationRecord
    /asociacion con la tabla intermedia/
    has_many :wines_strains, dependent: :destroy

    /asociacion con ingredients a travez de la tabla intermedia/
    has_many :wines, through: :wines_strains

    /Para disponer del formulario de ingredient y la tabla intermedia/
    accepts_nested_attributes_for :wines, :wines_strains, reject_if: :all_blanck, allow_destroy: true

end
