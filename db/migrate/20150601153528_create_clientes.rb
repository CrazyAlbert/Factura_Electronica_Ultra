class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
   	t.string :rfc
	t.string :nombre
	t.string :calle
	t.string :numExt
	t.string :numInt
	t.string :colonia
	t.string :municipio
	t.string :estado
	t.string :pais
	t.string :cp
      t.timestamps
    end
  end
end
