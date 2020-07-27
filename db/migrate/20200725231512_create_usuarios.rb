class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre_usuario, :limit => 30, :default => ""
      t.string :segundo_nombre, :limit => 30
      t.string :primer_apellido, :limit => 30
      t.string :segundo_apellido, :limit => 30
      t.string :correo_electronico, :limit =>100
      t.integer :edad, :limit=>2
      t.string :contraseña
      t.integer :telefono_usuario
      t.string :foto

      t.timestamps
    end
  end
end
