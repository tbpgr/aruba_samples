require 'spec_helper'

RSpec.describe 'have_permissions', :type => :aruba do
  let(:file) { 'hoge.txt' }
  let(:permissions) { 0544 }

  before(:each) { touch(file) }
  before(:each) { chmod(permissions, file) }

  it { expect(file).to have_permissions permissions }
  it { expect(file).not_to have_permissions 777 }
end
