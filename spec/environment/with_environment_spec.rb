require 'spec_helper'

RSpec.describe 'Environment', :type => :aruba do
  context 'with_environment' do
    it do
      with_environment 'HOGE_VARIABLE' => 'd' do
        expect(ENV['HOGE_VARIABLE']).to eq 'd'
      end
    end
  end
end
