class ConnectSpecialties < ActiveRecord::Migration[5.2]
  # Rajout de la spécialité dans la table docteur
  def change
    add_reference :doctors, :specialty, foreign_key: true
  end
end
