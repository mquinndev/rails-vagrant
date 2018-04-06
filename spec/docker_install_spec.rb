require 'spec_helper'

describe 'My Docker Script' do
  it 'installs docker' do
    file = File.new ('/usr/bin/docker')
    expect(File).to exist(file)
  end

  it 'installs docker-compose' do
    file = File.new ('/usr/local/bin/docker-compose')
    expect(File).to exist(file)
  end
end
