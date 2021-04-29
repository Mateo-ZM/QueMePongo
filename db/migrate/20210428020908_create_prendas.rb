class CreatePrendas < ActiveRecord::Migration[6.0]
  def change
    create_table :prendas do |t|
      t.text :tipo
      t.integer :categoria
      t.text :tela
      t.text :color_p
      t.text :color_s
      t.text :link_imagen

      t.timestamps
    end
  end
end
