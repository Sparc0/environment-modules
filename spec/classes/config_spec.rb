require 'spec_helper'
describe 'modules::config', :type => :class do
        let(:facts) do
                {
                        :concat_basedir => '/etc/environment-modules'
                }
        end
        it do
                should contain_concat('/etc/environment-modules/modulespath')
        end
end


