class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.timestamps
      t.string :walletable_type
      t.bigint :walletable_id
      t.decimal :balance, precision: 15, scale: 2, default: 0.0
    end
    add_index :wallets, [:walletable_type, :walletable_id] # Index for STI
  end
end
