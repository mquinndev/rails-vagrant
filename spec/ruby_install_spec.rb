require 'spec_helper'

describe 'My Ruby Script' do
  it 'installs ruby' do
    file = File.new ('/home/vagrant/.rvm/rubies/ruby-2.4.0/bin/ruby')
    expect(File).to exist(file)
  end

  it 'installs rails' do
    file = File.new ('/home/vagrant/.rvm/gems/ruby-2.4.0/bin/rails')
    expect(File).to exist(file)
  end

  it 'installs rspec' do
    file = File.new ('/home/vagrant/.rvm/gems/ruby-2.4.0/bin/rspec')
    expect(File).to exist(file)
  end
end
