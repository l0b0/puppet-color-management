require 'spec_helper'
describe 'color_management' do

  context 'with defaults for all parameters' do
    it { should contain_class('color_management') }
  end
end
