#
describe Worker3 do

  let(:day_of_week)
  let(:holiday)

  subject { described_class.new }

  before(:all) { load('worker_spec.yml') }

  prepare do |params|
    allow(subject)
      .to receive(:day_of_week)
      .and_return params[:day_of_week].to_sym

    allow(subject).to receive(:holiday?).and_return params[:holiday] == 'true'
  end

  execute { subject.has_work? ? 'Has Work' : 'Rest Day' }
end
