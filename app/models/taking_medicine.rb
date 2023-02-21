class TakingMedicine < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'した' },
    { id: 3, name: 'していない' },
  ]
  include ActiveHash::Associations
  has_many :notes

end