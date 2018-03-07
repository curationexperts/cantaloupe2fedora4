$LOAD_PATH << '../lib'
require 'delegates.rb'
require 'vcr'
require 'webmock'

ENV['FEDORA_URL'] = 'http://127.0.0.1:8984/rest/dev/'.freeze

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
end

describe Cantaloupe::HttpResolver do
  it 'gets the fedora url' do
    expect(described_class.fedora_url).to eq 'http://127.0.0.1:8984/rest/dev/'
  end
  it 'gets the fileset url' do
    expect(described_class.fileset_url('9g54xh65x')).to eq 'http://127.0.0.1:8984/rest/dev/9g/54/xh/65/9g54xh65x'
  end
  it 'gets the file url' do
    VCR.use_cassette("fedora4query") do
      expect(described_class.get_url('9g54xh65x', nil)).to eq 'http://127.0.0.1:8984/rest/dev/9g/54/xh/65/9g54xh65x/files/83ef8308-289e-4108-b30d-8640ce9e2e5f'
    end
  end
end
