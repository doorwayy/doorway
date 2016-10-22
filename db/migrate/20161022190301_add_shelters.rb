class AddShelters < ActiveRecord::Migration[5.0]
  def down
    drop_table :shelters
    drop_table :locations
    drop_table :addresses
    drop_table :phone_numbers
    drop_table :genders
  end
  def up
    create_table :shelters do |t|
      t.string :name,  default: '', null: false, limit: 191
      t.string :href, default: '', null: false, limit: 191
      t.string :description, default: '', null: false, limit: 191
      t.timestamps null: false
    end
    create_table :locations do |t|
      t.string :description,  default: '', null: false, limit: 191
      t.string :href, default: '', null: false, limit: 191
      t.integer :address_id, default: nil, null: true
      t.integer :shelter_id, default: nil, null: true
      t.timestamps null: false
    end
    create_table :addresses do |t|
      t.string :line1,  default: '', null: false, limit: 191
      t.string :line2,  default: '', null: false, limit: 191
      t.string :city,  default: '', null: false, limit: 191
      t.string :state,  default: '', null: false, limit: 191
      t.string :postal_code,  default: '', null: false, limit: 191
      t.string :country,  default: 'USA', null: false, limit: 191
      t.timestamps null: false
    end
    create_table :phone_numbers do |t|
      t.string :number,  default: '', null: false, limit: 191
      t.integer :location_id, default: nil, null: true
      t.timestamps null: false
    end
    create_table :genders do |t|
      t.string :description,  default: 'women', null: false, limit: 191
      t.integer :shelter_id, default: nil, null: true
      t.timestamps null: false
    end
  end
end
