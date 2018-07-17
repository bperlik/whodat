class CreateWhodatUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :whodat_users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :whodat_users, :email, unique: true
  end
end
