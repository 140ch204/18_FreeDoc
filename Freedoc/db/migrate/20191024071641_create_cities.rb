class CreateCities < ActiveRecord::Migration[5.2]
  # On créé la table City
  def change
    create_table :cities do |t|
      t.string :name
      t.timestamps
    end
  end
end
