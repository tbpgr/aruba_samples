require 'spec_helper'

RSpec.describe 'extract_text', type: :aruba do
  before(:each) { run("echo -n \"\e[31mhoge\"") }
  before(:each) { stop_all_commands }

  it { expect(unescape_text(last_command_started.output)).to eq "\e[31mhoge" }
  it { expect(extract_text(unescape_text(last_command_started.output))).to eq 'hoge' }
end
