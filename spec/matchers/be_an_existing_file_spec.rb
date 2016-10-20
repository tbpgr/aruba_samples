require 'spec_helper'

RSpec.describe 'be_an_existing_file', :type => :aruba do
  context 'exist' do
    let(:file) { 'hoge.txt' }
    before(:each) { touch(file) }
    it { expect(file).to be_an_existing_file }
  end

  context 'not exist' do
    let(:file) { 'hoge.txt' }
    it { expect(file).not_to be_an_existing_file }
  end
end
