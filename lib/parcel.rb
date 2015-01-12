class Parcel

  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
    @vol = @length * @width * @height
  end

  define_method(:volume) do
    @vol
  end

  define_method(:cost_to_ship) do
    price_per_pound = 2.25
    base_price = 5

    if @vol < 512 && @weight < 3
      return base_price
    else
      return base_price + (@weight * price_per_pound)
    end
  end


end
