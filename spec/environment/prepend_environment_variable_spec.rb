require 'spec_helper'

RSpec.describe 'Environment', :type => :aruba do
  context 'prepend_environment_variable' do
    before(:each) { prepend_environment_variable 'HOGE_VARIABLE', 'a' }

    before(:each) { run('env') }
    before(:each) { stop_all_commands }

    it { expect(last_command_started.output).to include 'HOGE_VARIABLE=a' }
  end
end
