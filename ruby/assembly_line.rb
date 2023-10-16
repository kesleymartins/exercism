class AssemblyLine
  def initialize(speed)
    @speed = speed
    @hour_rate = nil
  end

  def production_rate_per_hour
    calc_hour_rate

    @hour_rate
  end

  def working_items_per_minute
    calc_hour_rate

    (@hour_rate / 60).floor
  end

  private

  def calc_hour_rate
    prod = @speed * 221

    @hour_rate = success_rate(prod)
  end

  def success_rate(prod)
    case @speed
    when 1..4
      prod
    when 5..8
      prod * 0.9
    when 9
      prod * 0.8
    when 10
      prod * 0.77
    end
  end
end
