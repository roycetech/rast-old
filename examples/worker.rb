#
class Worker
  def has_work?(day_of_week:, holiday:)
    false
  end
end

worker = Worker.new
puts(worker.has_work?(day_of_week: :Monday, holiday: true))
