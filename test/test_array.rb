require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'taipu'
require 'spectus'

include Spectus

subject = Taipu::Array.new

it { subject.valid?([]) }.MUST be_true
it { subject.valid?('foo') }.MUST be_false

it { subject.to_h }.MUST eql(type: :array)
