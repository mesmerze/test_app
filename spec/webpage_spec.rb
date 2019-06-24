# frozen_string_literal: true

require 'webpage'
require 'log'
require 'spec_helper'

RSpec.describe Webpage do
  subject { described_class.new(['/help_page/1', ['126.318.035.038']]) }

  it 'initiates Webpage object with attrs' do
    expect(subject.route).to eq('/help_page/1')
    expect(subject.ips).to eq(['126.318.035.038'])
    expect(subject.views).to eq(1)
    expect(subject.visits).to eq(1)
  end
end
