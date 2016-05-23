class CreateShipwrecks < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email
      t.string :website

      t.timestamps null: false
    end

    create_table :shipwrecks do |t|
      t.belongs_to :user, index: true
      t.string :shipname
      t.float :latitude
      t.float :longitude
      t.text :summary
      t.string :link

      t.timestamps null: false
    end
  end
end
