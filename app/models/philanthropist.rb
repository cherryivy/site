class Philanthropist < User
  validates :zip_code, length: { minimum: 5, maximum: 10 }
end
