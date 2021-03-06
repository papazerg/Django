#
# Cookbook Name:: django
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'django::install_virtualenv' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'the necessary packages' do 
    	expect(chef_run).to install_package('python3-pip')
    end 
    it 'intsalls virtualenv' do 
    	expect(chef_run).to run_execute('pip3 install virtualenv')
    end 

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

  end
end
