require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'taipu'
require_relative 'helper'

subject 'file type' do
  Taipu::File.new
end

it 'is expected to be a file type' do
  Expect.this { @object.is_a?(Taipu::File) }.to :be_true
end
