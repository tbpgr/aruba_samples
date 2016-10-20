require 'spec_helper'

RSpec.configure do |config|
  config.include Aruba::Api
end

RSpec.describe 'absolute?' do
  context 'not absolute' do
    let(:path) { 'path.txt' }

    it { expect(absolute?(path)).to be false }
  end
  context 'absolute' do
    let(:path) { '/home' }

    it { expect(absolute?(path)).to be true }
  end
end
