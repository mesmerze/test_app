# frozen_string_literal: true

require 'log'
require 'spec_helper'

RSpec.describe Log do
  subject { described_class.call(logfile) }

  let(:logfile) { 'spec/fixtures/sample.log' }

  it 'receives logfile as input and print it' do
    expect { subject }.to output("Awesome log info\n").to_stdout
  end
end
