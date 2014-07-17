class Charity < User
  validates :state, length: 2
  has_many :events
end
