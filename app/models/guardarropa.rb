class Guardarropa < ApplicationRecord
    has_many :prendas , foreign_key: 'guardarropa_id'
    has_many :atuendos
    accepts_nested_attributes_for :prendas
    paginates_per 6
end
