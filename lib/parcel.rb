class Parcel
  define_method(:initialize) do |height, width, length, weight|
    @height = height
    @width = width
    @length = length
    @weight = weight
  end

  define_method(:volume) do
    @height * @width * @length
  end

  define_method(:cost_to_ship) do |distance, speed|
    if (distance < 100)
      distance_cost = 20
    elsif (distance < 1000)
      distance_cost = 50
    else
      distance_cost = 100
    end

    speed_cost = {
      'Normal' => 0,
      'Express' => 100,
      'Same Day' => 200
    }

    (volume * 1.5) + (@weight * 0.5) + distance_cost + speed_cost.fetch(speed)

  end
end
