require 'spec_helper'
describe 'modules::paths', :type => :class do
        context 'hiera_test' do
                hiera = Hiera.new(:config => 'spec/fixtures/hiera/hiera.yaml')
                paths = hiera.lookup('', nil, nil)
                let (:params) {{ :mount => mounts}}
        end
end
