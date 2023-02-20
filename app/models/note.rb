class Note < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :weather
  belongs_to :usage_type
  belongs_to :answer

  belongs_to :user
  has_one_attached :image

  validates :usage_type_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :weather_id, numericality: { other_than: 1 , message: "can't be blank"}
end
