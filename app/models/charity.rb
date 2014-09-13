class Charity < User
  has_many :events

  def can_edit?(obj)
    (obj == self) || (obj.is_a?(Event) && obj.charity == self)
  end
end
