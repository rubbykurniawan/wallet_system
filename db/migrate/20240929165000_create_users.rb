class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.string :password_digest, null: false
      t.string :role, default: 'member'
      t.string :status, default: 'active'
    end
    add_index :users, :email, unique: true
  end
end
