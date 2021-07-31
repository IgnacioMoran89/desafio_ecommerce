class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :token
      t.string :status
      t.decimal :total
      t.references :order, foreign_key: true
      t.references :payment_method, foreign_key: true

      t.timestamps
    end
  end
end
