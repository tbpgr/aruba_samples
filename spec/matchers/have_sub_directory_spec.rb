require 'spec_helper'

RSpec.describe 'have_sub_directory', type: :aruba do
  context 'single dir' do
    let(:directory) { 'dir' }
    let(:sub_directory) { 'sub' }

    before(:each) { create_directory(File.join(directory, sub_directory)) }
    before(:each) { create_directory(File.join(directory, 'sub2')) }

    it { expect(directory).to have_sub_directory sub_directory }
  end

  context 'multi dir' do
    let(:directories) { %w(dir1 dir2) }
    let(:sub_directory) { 'sub' }

    before(:each) do
      directories.each { |d| create_directory(File.join(d, sub_directory)) }
    end

    it { expect(directories).to all have_sub_directory sub_directory }
  end
end
