class Item
    attr_accessor :text, :checked

  def initialize(text = "")
    @text = text
    @checked = false
  end

  def to_s
    if @checked 
      "[X] " + @text
    else 
      "[ ] " + @text
    end
  end

end

#TEST: 
# item1 = Item.new("Carne")
# puts item1.to_s