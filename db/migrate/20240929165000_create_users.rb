class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :remember_token
      t.string :reset_password_token
      t.datetime :last_login_at
    end
  end
end
