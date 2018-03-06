$LOAD_PATH << '../lib'
require 'delegates.rb'

describe Cantaloupe::HttpResolver do
  it 'accepts an id and returns a url' do
    expect(Cantaloupe::HttpResolver.get_url('abc123', nil)).to eq 'https://fedora.info/blah'
  end
end
