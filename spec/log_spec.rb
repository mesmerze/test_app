# frozen_string_literal: true

require 'log'
require 'spec_helper'

RSpec.describe Log do
  subject { described_class.call(logfile) }

  let(:logfile) { 'spec/fixtures/sample.log' }

  it 'receives logfile as input and print it' do
    expect { subject }.to output(
      "/help_page/1 126.318.035.038\n/contact 184.123.665.067\n/home 184.123.665.067\n"
    ).to_stdout
  end
end
