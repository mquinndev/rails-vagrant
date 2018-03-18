require 'spec_helper'

describe 'Canary Test' do
    it "true = true" do
      expect(true).to eq true
  end
end

describe 'My Script' do
  subject { create_stubbed_env }

  it 'system_build.sh runs successfully' do
    stdout, stderr, status = subject.execute(
      'scripts/system_build.sh'
    )
    expect(status.exitstatus).to eq 0
  end
end
