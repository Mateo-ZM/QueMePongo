class RenameSexoToGeneroInUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :sexo, :genero
  end
end
