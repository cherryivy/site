class SuperAdmin < User

  def can_edit?(obj)
    true
  end

end
