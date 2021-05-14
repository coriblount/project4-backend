class CreateFinanceItems < ActiveRecord::Migration[6.1]
  def change
    create_table :finance_items do |t|
      t.string :name
      t.string :amount
      t.string  :month
      t.integer :user_id

      t.timestamps
    end
  end
end
