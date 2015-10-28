require 'spec_helper'
describe 'modules::install', :type => :class do
        opsys = %w (
                Debian
                Ubuntu
        )

        opsys.each do |os|
                context "install environment-modules #{os}" do
                        let(:facts){ {osfamily => "#{os}"} }

                        it { should contain_package('environment-modules').with_ensure('installed') }

                end
        end
end
