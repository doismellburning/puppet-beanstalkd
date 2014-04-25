require 'spec_helper'

describe 'beanstalkd' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "beanstalkd class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should contain_class('beanstalkd::params') }

        it { should contain_class('beanstalkd::install') }
        it { should contain_class('beanstalkd::config') }
        it { should contain_class('beanstalkd::service') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'beanstalkd class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
