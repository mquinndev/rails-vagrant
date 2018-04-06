require 'spec_helper'

describe 'Canary Test' do
    it "true = true" do
      expect(true).to eq true
  end
end

describe 'My Build Script' do
  let(:stubbed_env) { create_stubbed_env }
  let(:which) { stubbed_env.stub_command('which') }

  it 'installs curl' do
    file = File.new ('/usr/bin/curl')
    expect(File).to exist(file)
  end
  
  it 'installs git' do
    file = File.new ('/usr/bin/git')
    expect(File).to exist(file)
  end

  it 'installs php' do
    file = File.new ('/usr/bin/php')
    expect(File).to exist(file)
  end

  it 'installs heroku' do
    file = File.new ('/usr/bin/heroku')
    expect(File).to exist(file)
  end
end
