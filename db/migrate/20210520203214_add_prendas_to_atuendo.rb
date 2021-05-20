class AddPrendasToAtuendo < ActiveRecord::Migration[6.0]
  def change
    add_column :atuendos, :prenda_torso_id, :integer, index: true
    add_column :atuendos, :prenda_piernas_id, :integer, index: true
    add_column :atuendos, :prenda_pies_id, :integer, index: true
    add_column :atuendos, :prenda_accesorios_id, :integer, index: true
  end
end
