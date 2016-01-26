require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'taipu'
require 'spectus'

include Spectus

subject = Taipu::Number.new(min: 42)

it { subject.valid?(42) }.MUST be_true
it { subject.valid?(100) }.MUST be_true
it { subject.valid?(4) }.MUST be_false
it { subject.valid?('foo') }.MUST be_false

it { subject.to_h }.MUST eql(min: 42, max: nil, type: :number)
