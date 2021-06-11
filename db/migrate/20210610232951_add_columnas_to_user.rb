class AddColumnasToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :link_imagen, :string
    add_column :users, :sexo, :integer
  end
end
