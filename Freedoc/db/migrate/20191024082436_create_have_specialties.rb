class CreateHaveSpecialties < ActiveRecord::Migration[5.2]
  # On créé la table intermédiaire entre spécialité et docteur
  def change
    create_table :have_specialties do |t|
      t.belongs_to :specialty, index: true
      t.belongs_to :doctor, index: true
      t.timestamps
    end
  end
end
