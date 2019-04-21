class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states, id: false do |t|
      t.string :code, limit: 2, primary_key: true
      t.decimal :gstcode, precision: 2, scale: 0
      t.string :name

      t.timestamps
    end
  end
end
