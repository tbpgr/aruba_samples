require 'spec_helper'

RSpec.describe 'be_an_existing_path', :type => :aruba do
  context 'exist' do
    let(:path) { 'hoge.txt' }
    before(:each) { touch(path) }
    it { expect(path).to be_an_existing_path }
  end

  context 'not exist' do
    let(:path) { 'hoge.txt' }
    it { expect(path).not_to be_an_existing_path }
  end
end
