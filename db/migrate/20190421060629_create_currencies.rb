class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies, id: false do |t|
      t.string :code, primary_key: true, limit: 3
      t.string :name

      t.timestamps
    end
  end
end
