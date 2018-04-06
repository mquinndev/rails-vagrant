require 'spec_helper'

describe 'My NVM Script' do
  it 'installs node' do
    file = File.new ('/home/vagrant/.nvm/')
    expect(File).to exist(file)
  end
end
