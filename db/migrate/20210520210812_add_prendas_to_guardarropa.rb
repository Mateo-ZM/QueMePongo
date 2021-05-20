class AddPrendasToGuardarropa < ActiveRecord::Migration[6.0]
  def change
    add_reference :prendas, :guardarropa
    add_reference :atuendos, :guardarropa
  end
end
