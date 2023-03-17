class Note < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :weather
  belongs_to :usage_type
  belongs_to :taking_medicine
  belongs_to :bathing

  with_options presence: true do
    validates :facility_user, :responsible_person, :record_date, :utilization_time, :body_temperature, :pulse, :dbp, :sbp, :diary
    validates :usage_type_id, :weather_id, :taking_medicine_id, :bathing_id, numericality: { other_than: 1, message: "を選択してください" }
  end
  
end
