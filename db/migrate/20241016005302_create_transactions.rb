class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.timestamps
      t.references :source_wallet, foreign_key: { to_table: :wallets }, null: true
      t.references :target_wallet, foreign_key: { to_table: :wallets }, null: true
      t.decimal :amount, precision: 15, scale: 2, null: false
      t.string :transaction_type, null: false # Trx Type (credit, debit)
    end
  end
end
