#
describe Worker2 do

  let(:sut)
  let(:day_of_week)
  let(:holiday)

  before(:all) { load('worker_spec.yml') }

  prepare do |params|
    assign(:sut,
      described_class.new(
        day_of_week: params[:day_of_week].to_sym,
        holiday: params[:holiday] == 'true'
      )
    )
  end

  execute { sut.has_work? ? 'Has Work' : 'Rest Day' }
end
