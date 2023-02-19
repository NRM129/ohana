class Note < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :weather
  belongs_to :usagetype

  belongs_to :user
  has_one_attached :image

  validates :usagetype_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :weather_id, numericality: { other_than: 1 , message: "can't be blank"}
end
