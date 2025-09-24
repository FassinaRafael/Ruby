module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant
  RANKS = (1..8)
  FILES = ('A'..'H')
  
  def self.valid_square?(rank, file)
    if RANKS.include?(rank) && FILES.include?(file)
      true
    else
      false
    end
  end

  def self.nickname(first_name, last_name)
    size = last_name.size
    nickname = "#{first_name[0..1].upcase}#{last_name[size - 2..size].upcase}"
  end

  def self.move_message(first_name, last_name, square)
    if valid_square?(square[1].to_i, square[0])
      "#{nickname(first_name, last_name)} moved to #{square}"
    else
      "#{nickname(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
