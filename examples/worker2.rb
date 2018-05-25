#
class Worker2

  attr_reader :day_of_week, :holiday

  def initialize(day_of_week:, holiday:)
    @day_of_week = day_of_week
    @holiday = holiday
  end

  def has_work?
  end
end
