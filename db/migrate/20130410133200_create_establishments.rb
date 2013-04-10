class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.string :address
      t.string :provider_uid
      t.integer :col_low
      t.integer :col_high
      t.timestamps
    end
  end
end
