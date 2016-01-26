require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'taipu'
require 'spectus'

include Spectus

subject = Taipu::String.new(minlen: 3, maxlen: nil, pattern: nil)

it { subject.valid?('foo') }.MUST be_true
it { subject.valid?('fo') }.MUST be_false
it { subject.valid?(4) }.MUST be_false

it { subject.to_h }.MUST eql(minlen: 3, maxlen: nil, pattern: nil, type: :string)
