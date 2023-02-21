class BloodType < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'A型' },
    { id: 3, name: 'B型' },
    { id: 4, name: 'O型' },
    { id: 5, name: 'AB型' },
    { id: 6, name: '不明・その他' }
  ]
  include ActiveHash::Associations
  # has_many :users

end
