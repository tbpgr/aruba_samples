require 'spec_helper'

RSpec.describe 'move', :type => :aruba do
  let(:old_dir) { 'old' }
  let(:new_dir) { 'new' }

  before(:each) do
    create_directory old_dir
    create_directory new_dir
    move old_dir, new_dir
  end

  it { expect(new_dir).to be_an_existing_directory }
  it { expect(old_dir).not_to be_an_existing_directory }
end
