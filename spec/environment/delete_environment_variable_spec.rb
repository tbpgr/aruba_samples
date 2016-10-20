require 'spec_helper'

ENV['HOGE_VARIABLE'] = 'a'
RSpec.describe 'Environment', :type => :aruba do
  context 'delete_environment_variable' do
    before(:each) { delete_environment_variable 'HOGE_VARIABLE' }
    before(:each) { run('env') }
    before(:each) { stop_all_commands }

    it { expect(last_command_started.output).not_to include 'HOGE_VARIABLE=a' }
  end
end
