require 'spec_helper'

RSpec.describe 'cd to directory', :type => :aruba do
  before(:each) do
    create_directory 'dir'
    cd 'dir'
  end

  before(:each) { run_simple 'pwd' }

  it { expect(last_command_started.output).to include 'dir' }
end
