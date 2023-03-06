class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.date        :record_date,          null: false
      t.integer     :weather_id,           null: false
      t.string      :responsible_person,   null: false
      t.time        :utilization_time,     null: false
      t.float       :body_temperature
      t.integer     :pulse
      t.integer     :blood_pressure
      t.integer     :taking_medicine_id,   null: false
      t.integer     :usage_type_id,        null: false
      t.integer     :bathing_id,           null: false
      t.text        :diary,                null: false
      t.integer     :facility_user_id,     null: false
      t.references  :user,                 null: false, foreign_key: true

      t.timestamps
    end
  end
end
