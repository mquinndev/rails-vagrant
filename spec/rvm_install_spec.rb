require 'spec_helper'

describe 'My RVM Script' do
  it 'installs rvm' do
    file = File.new ('/home/vagrant/.rvm/bin/rvm')
    expect(File).to exist(file)
  end
end
