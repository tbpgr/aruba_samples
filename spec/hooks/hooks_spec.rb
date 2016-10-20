require 'spec_helper'

Aruba.configure do |config|
  config.before :command do |cmd|
    puts "before the run of '#{cmd.commandline}'"
  end

  config.after :command do |cmd|
    puts "after the run of '#{cmd.commandline}'"
  end
end

RSpec.describe 'Hooks', :type => :aruba do
  before(:each) { run_simple 'echo hoge' }

  it { expect(last_command_started.stdout.chomp).to eq 'hoge' }
end
