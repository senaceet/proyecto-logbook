class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre_usuario, :limit => 30, :null => false
      t.string :segundo_nombre, :limit => 30
      t.string :primer_apellido, :limit => 30, :null => false
      t.string :segundo_apellido, :limit => 30
      t.string :correo_electronico, :limit =>100, :null => false
      t.integer :edad, :limit=>2, :null => false
      t.string :contraseña, :null => false
      t.integer :telefono_usuario, :null => false
      t.string :foto

      t.timestamps
    end
  end
end
