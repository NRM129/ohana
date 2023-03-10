class Note < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # include Chartkick::Model
  belongs_to :weather
  belongs_to :usage_type
  belongs_to :taking_medicine
  belongs_to :bathing

  belongs_to :user
  has_one_attached :image
  has_many :comments

  validates :usage_type_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :weather_id, numericality: { other_than: 1 , message: "can't be blank"}
end
