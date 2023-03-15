class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to :bloodtype

  has_many :notes
  has_many :comments

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: "は半角英数を両方含む必要があります"}

  with_options presence: true do
    validates :phone_number, format: { with: /\A[0-9]{10,11}\z/ }
    validates :birthday
    validates :blood_type
  end


  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ } do
    validates :name
    validates :facility_user
  end
end
