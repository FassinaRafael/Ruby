class TwoFer
  def self.two_fer(name = nil)
    name = name.to_s.strip       
    name = 'you' if name.empty?  
    "One for #{name}, one for me."
  end
end
