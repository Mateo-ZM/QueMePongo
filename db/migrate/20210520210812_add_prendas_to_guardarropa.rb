class AddPrendasToGuardarropa < ActiveRecord::Migration[6.0]
  def change
    add_reference :prendas, :guardarropa , foreign_key: true
    add_reference :atuendos, :guardarropa
  end
end
