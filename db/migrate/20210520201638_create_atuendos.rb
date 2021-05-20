class CreateAtuendos < ActiveRecord::Migration[6.0]
  def change
    create_table :atuendos do |t|
      t.string :Descripcion
      t.integer :Puntaje
      t.integer :Etiqueta_Formal
      t.integer :Etiqueta_Estacion
      t.integer :Etiqueta_DiaNoche

      t.timestamps
    end
  end
end
