class CreateAppointments < ActiveRecord::Migration[5.2]
  # On créé la table appointment et on y relie 1 docteur et 1 patient 
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
      t.timestamps
    end
  end
end
