require 'spec_helper'

RSpec.describe 'have_file_size', :type => :aruba do
  let(:file) { 'hoge.txt' }
  let(:size) { 11 }

  before(:each) { write_fixed_size_file(file, size) }

  it { expect(file).to have_file_size size }
end
