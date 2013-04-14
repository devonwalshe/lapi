class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :establishment_name
      t.float :lat
      t.float :long
      t.string :address
      t.string :post_code
      t.string :email
      t.string :phone
      t.string :education_type
      t.string :website_url
      t.integer :official_establishment_uid
      t.timestamps
    end
  end
end
