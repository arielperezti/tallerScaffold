class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nombres
      t.string :apellidos
      t.string :direccion
      t.string :telefono
      t.string :login
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
