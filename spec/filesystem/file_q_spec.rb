require 'spec_helper'

RSpec.configure do |config|
  config.include Aruba::Api
end

RSpec.describe 'file?' do
  context 'not exist' do
    let(:file) { 'file' }

    it { expect(file?(file)).to be false }
  end
  context 'exist' do
    let(:file) { 'file' }

    before(:each) { touch(file) }

    it { expect(file?(file)).to be true }
  end
end
