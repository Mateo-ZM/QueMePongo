class CreatePrendas < ActiveRecord::Migration[6.0]
  def change
    create_table :prendas do |t|
      t.text :tipo
      t.integer :categoria
      t.integer :tela
      t.text :color_primario
      t.text :color_secundario
      t.text :link_imagen

      t.timestamps
    end
  end
end
