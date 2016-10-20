require 'spec_helper'

RSpec.configure do |config|
  config.include Aruba::Api
end

RSpec.describe 'directory?' do
  context 'not exist' do
    let(:directory) { 'dir' }

    it { expect(directory?(directory)).to be false }
  end
  context 'exist' do
    let(:directory) { 'dir' }

    before(:each) { create_directory(directory) }

    it { expect(directory?(directory)).to be true }
  end
end
