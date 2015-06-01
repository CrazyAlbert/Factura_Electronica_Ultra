class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.String :rfc
      t.String :nombre
      t.String :calle
      t.String :noExterior
      t.String :noInterior
      t.String :colonia
      t.String :cp
      t.String :municipio
      t.String :estado
      t.String :pais

      t.timestamps
    end
  end
end
