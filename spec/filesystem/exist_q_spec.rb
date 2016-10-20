require 'spec_helper'

RSpec.configure do |config|
  config.include Aruba::Api
end

RSpec.describe 'exist?' do
  context 'not exist' do
    let(:file) { 'file' }
    let(:directory) { 'dir' }

    it { expect(exist?(directory)).to be false }
    it { expect(exist?(file)).to be false }
  end
  context 'exist' do
    let(:file) { 'file' }
    let(:directory) { 'dir' }

    before(:each) { create_directory(directory) }
    before(:each) { touch(file) }

    it { expect(directory?(directory)).to be true }
    it { expect(file?(file)).to be true }
  end
end
