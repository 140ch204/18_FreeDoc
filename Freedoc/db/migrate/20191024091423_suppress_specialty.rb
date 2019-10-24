class SuppressSpecialty < ActiveRecord::Migration[5.2]
  # Suppression de la colonne specialité de la tavle docteur
  def change
    remove_column(:doctors, :specialty, :string)
  end
end
