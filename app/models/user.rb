class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to :bloodtype

  has_many :notes
  has_many :comments
end
