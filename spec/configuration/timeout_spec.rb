require 'spec_helper'

RSpec.describe 'timeout', type: :aruba do
  context 'set exit_timeout' do
    before(:each) do
      Aruba.configure { |c| c.exit_timeout = 2 }
    end
    Aruba.configure { |c| it { expect(c.exit_timeout).to eq(2) } }
  end

  context 'in time' do
    before(:each) do
      Aruba.configure { |c| c.exit_timeout = 2 }
      run('sleep 1')
    end
    it { expect(last_command_started).to be_successfully_executed }
  end

  context 'timeout' do
    before(:each) do
      Aruba.configure { |c| c.exit_timeout = 1 }
      run('sleep 4')
    end
    it { expect(last_command_started).not_to be_successfully_executed }
  end
end
