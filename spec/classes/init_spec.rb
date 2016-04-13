require 'spec_helper'
describe 'perconarepo' do

  context 'with default values for all parameters' do
    it { should contain_class('perconarepo') }
  end
end
