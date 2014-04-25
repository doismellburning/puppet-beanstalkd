require 'spec_helper'

describe 'beanstalkd::install' do
  describe 'beanstalkd::install class on RedHat' do
    let(:facts) {{
      :osfamily => 'RedHat',
    }}

    it { should contain_package('beanstalkd') }
  end

  describe 'beanstalkd::install class on Debian' do
    let(:facts) {{
      :osfamily => 'Debian',
    }}

    it { should contain_package('beanstalkd') }
  end
end
