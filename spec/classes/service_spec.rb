require 'spec_helper'

describe 'beanstalkd::service' do
  describe 'beanstalkd::service class on RedHat' do
    let(:facts) {{
      :osfamily => 'RedHat',
    }}

    it { should contain_service('beanstalkd') }
  end

  describe 'beanstalkd::service class on Debian' do
    let(:facts) {{
      :osfamily => 'Debian',
    }}

    it { should contain_service('beanstalkd') }
  end
end

