class Temperature
  def initialize(temp)
    if temp.has_key?(:f)
      @f = temp[:f]
    elsif temp.has_key?(:c)
      @c = temp[:c]
    end
  end
  def to_celsius
    if @f
      (@f-32)*5/9
    else
      @c
    end
  end
  def to_fahrenheit
    if @c
      (9*@c/5)+32
    else
      @f
    end
  end
end
