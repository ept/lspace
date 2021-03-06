require_relative '../lib/lspace'
require_relative '../lib/lspace/eventmachine'
require 'pry-rescue/rspec'

RSpec.configure do |c|
  c.around(:each) do |example|
    LSpace.clean do
      example.run
    end
  end
end
