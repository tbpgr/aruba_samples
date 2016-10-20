require 'spec_helper'

RSpec.configure do |config|
  config.include Aruba::Api
end

RSpec.describe 'create_directory' do
  context 'not exist' do
    let(:directory) { 'dir' }

    it { expect(directory).not_to be_an_existing_directory }
  end
  context 'exist' do
    let(:directory) { 'dir' }

    before(:each) { create_directory(directory) }

    it { expect(directory).to be_an_existing_directory }
  end
end
