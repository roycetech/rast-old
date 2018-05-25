#
describe Worker do

  subject { described_class.new }

  let(:day_of_week)
  let(:holiday)

  prepare do |params|
    assign(:day_of_week, params[:day_of_week].to_sym)
    assign(:holiday, params[:holiday] == 'true')
  end

  execute do
    result = subject.has_work?(day_of_week: day_of_week, holiday: holiday)
    result ? 'Has Work' : 'Rest Day'
  end
end
