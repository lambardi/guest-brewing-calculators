class Abv
  attr_accessor :og, :fg
  
  def initialize
    @og = 0
    @fg = 0
  end
  
  def update(og, fg)
    @og = og
    @fg = fg
  end
  
  def abv
    ((76.08*(@og-@fg)/(1.775-@og))*(@fg/0.794))
  end
end