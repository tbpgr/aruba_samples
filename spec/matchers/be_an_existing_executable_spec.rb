require 'spec_helper'

RSpec.describe 'be_an_existing_executable', type: :aruba do
  context 'executable' do
    let(:file) { 'file1.txt' }
    before(:each) { touch(file) }
    before(:each) { chmod(0755, file) }

    it { expect(file).to be_an_existing_executable }
  end

  context 'can not executable' do
    let(:file) { 'file2.txt' }
    before(:each) { touch(file) }
    before(:each) { chmod(0444, file) }

    it { expect(file).not_to be_an_existing_executable }
  end
end
