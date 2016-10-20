require 'spec_helper'

RSpec.configure do |config|
  config.include Aruba::Api
end

RSpec.describe 'relative?' do
  context 'not relative' do
    let(:path) { '/home' }

    it { expect(relative?(path)).to be false }
  end
  context 'relative' do
    let(:path) { 'path.txt' }

    it { expect(relative?(path)).to be true }
  end
end
