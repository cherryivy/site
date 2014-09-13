class Philanthropist < User
  def can_edit?(obj)
    (obj == self)
  end
end
