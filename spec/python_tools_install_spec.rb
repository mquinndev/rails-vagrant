require 'spec_helper'

describe ('My Python Script') do
  it 'installs python' do
    file = File.new ('/usr/bin/python')
    expect(File).to exist(file)
  end

 it 'installs pip' do
    file = File.new ('/usr/local/bin/pip')
    expect(File).to exist(file)
  end

 it 'installs pipenv' do
    file = File.new ('/usr/local/bin/pipenv')
    expect(File).to exist(file)
  end
end
