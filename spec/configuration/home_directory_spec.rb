require 'spec_helper'

RSpec.describe 'home directory', type: :aruba do
  context 'default home_directory' do
    Aruba.configure { |c| it { expect(c.home_directory).to eq(Dir.home) } }
  end

  context 'set home_directory' do
    before(:each) do
      Aruba.configure { |c| c.home_directory = '/home' }
    end
    Aruba.configure { |c| it { expect(c.home_directory).to eq('/home') } }
  end
end
