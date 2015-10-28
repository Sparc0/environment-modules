require 'spec_helper'
describe 'modules', :type => :class do

        context 'main init tests' do
                let(:facts) do
                        {
                                :osfamily => 'Ubuntu',
                                :concat_basedir => '/etc/environment-modules'
                        }
                end
                it { should contain_class('modules::install') }
                it { should contain_class('modules::config') }
        end
end

