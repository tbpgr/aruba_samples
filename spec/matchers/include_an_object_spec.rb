require 'spec_helper'

RSpec.describe [2, 4, 'a', 11] do
  it { is_expected.to include_an_object( be_odd ) }
  it { is_expected.to include_an_object( be_an(String) ) }
  it { is_expected.not_to include_an_object( be_between(0, 1).inclusive ) }
  it { is_expected.to include_an_object( be_between(0, 2).inclusive ) }
  it { is_expected.not_to include_an_object( be_between(0, 2).exclusive ) }
  it { is_expected.to include_an_object( be_between(0, 3).exclusive ) }
  it { is_expected.to include_an_object( be < 10 ) }
  it { is_expected.to include_an_object( eq 'a' ) }
  it { is_expected.not_to include_an_object( eq 'b' ) }
end
