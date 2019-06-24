# frozen_string_literal: true

require 'log'
require 'spec_helper'

RSpec.describe Log do
  subject { described_class.new(logfile).webpages }

  let(:logfile) { 'spec/fixtures/sample.log' }

  it 'receives logfile as input and process it' do
    expect( subject).to eq( {"/help_page/1"  => ['126.318.035.038'], "/contact" => ['184.123.665.067'], "/home" => ['184.123.665.067']})
  end
end
