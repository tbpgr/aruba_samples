require 'spec_helper'

RSpec.describe 'be_an_absolute_path', :type => :aruba do
  context 'absolute' do
    let(:path) { '/path/to/hoge.txt' }
    it { expect(path).to be_an_absolute_path }
  end

  context 'relative' do
    let(:path) { 'hoge.txt' }
    it { expect(path).not_to be_an_absolute_path }
  end
end
