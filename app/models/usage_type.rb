class UsageType < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '通所' },
    { id: 3, name: '訪問' },
    { id: 4, name: '宿泊' },
    { id: 5, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :notes

end
