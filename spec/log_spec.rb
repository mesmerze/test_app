# frozen_string_literal: true

require 'log'
require 'spec_helper'

RSpec.describe Log do
  subject { described_class.new(logfile) }

  let(:logfile) { 'spec/fixtures/sample.log' }

  it 'receives logfile as input and process it' do
    expect(subject.webpages.first).to be_a_kind_of(Webpage)
    expect(subject.webpages.last.route).to eq('/home')
  end
end
