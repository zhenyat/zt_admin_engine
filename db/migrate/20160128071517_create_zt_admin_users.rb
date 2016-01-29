class CreateZtAdminUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :zt_admin_users do |t|
      t.integer :role
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :password_digest
      t.string :remember_digest
      t.integer :status

      t.timestamps
    end
  end
end
