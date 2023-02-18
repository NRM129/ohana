class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.date        :record_date,          null: false
      t.integer     :weather,              null: false
      t.string      :responsible_person,   null: false
      t.time        :utilization_time,     null: false
      t.integer     :body_temperature
      t.integer     :pulse
      t.integer     :blood_pressure
      t.integer     :taking_medicine,      null: false
      t.string      :usage_type,           null: false
      t.string      :bathing,              null: false
      t.references  :user,                 null: false, foreign_key: true

      t.timestamps
    end
  end
end
