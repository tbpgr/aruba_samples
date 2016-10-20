require 'spec_helper'

RSpec.describe 'have_file_content', type: :aruba do
  let(:file) { 'hoge.md' }
  let(:content) { 'hoge hige hage' }

  before(:each) { write_file(file, content) }

  it { expect(file).to have_file_content content }
  it { expect(file).to have_file_content /h.ge/ }
  it { expect(file).to have_file_content end_with('ge') }
end
