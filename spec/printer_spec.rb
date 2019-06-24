# frozen_string_literal: true

require 'printer'
require 'spec_helper'

RSpec.describe Printer do
  let(:webpages) { Log.new('spec/fixtures/sample.log').webpages }

  it 'prints views' do
    expect { Printer.views(webpages) }.to output(
      "Views: \n/home 1 views\n/contact 1 views\n/help_page/1 1 views\n~~~~~~\n"
    ).to_stdout
  end

  it 'prints visits' do
    expect { Printer.visits(webpages) } .to output(
      "Visits: \n/home 1 visits\n/contact 1 visits\n/help_page/1 1 visits\n~~~~~~\n"
    ).to_stdout
  end
end
