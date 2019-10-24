class ConnectCities < ActiveRecord::Migration[5.2]
  # Evolutin des tables pour acceuillir les infos des city
  def change
    add_reference :doctors, :city, foreign_key: true
    add_reference :patients, :city, foreign_key: true
    add_reference :appointments, :city, foreign_key: true
  end
end
