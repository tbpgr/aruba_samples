require 'spec_helper'

RSpec.describe 'timeout', type: :aruba do
  context 'timeout' do
    before(:each) { aruba.config.exit_timeout = 1 }
    before(:each) { run('sleep 2') }

    it { expect(last_command_started).to run_too_long }
  end

  context 'in time' do
    before(:each) { aruba.config.exit_timeout = 4 }
    before(:each) { run('sleep 2') }

    it { expect(last_command_started).not_to run_too_long }
  end
end
