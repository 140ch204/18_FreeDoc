class CreateSpecialties < ActiveRecord::Migration[5.2]
  # On créé la table spécialité
  def change
    create_table :specialties do |t|
      t.string :name
      t.timestamps
    end
  end
end
