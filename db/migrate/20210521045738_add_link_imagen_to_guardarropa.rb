class AddLinkImagenToGuardarropa < ActiveRecord::Migration[6.0]
  def change
    add_column :guardarropas, :link_imagen, :string
  end
end
